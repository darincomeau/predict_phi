"""
Author: Darin Comeau
Makes forecasts based on kernel analog forecasting (geometric harmonics)
"""
import os

import matplotlib.pyplot as plt

import numpy as np

import scipy.io as sio


expmt = 'ip_sst'
# fMode = 8   # mode to forecast
# fMode = 10  # mode to forecast
# fMode = 12  # mode to forecast
fMode = 87  # mode to forecast
tLag = 61  # length of forecast

print expmt + ' mode ' + str(fMode) + ', lag ' + str(tLag)

# setup directories
dirIn = '/Users/darincomeau/Documents/Projects/joanna/predict_phi/' + \
        'forecast_data/' + expmt + '/'
dirOut = dirIn + 'plots/'
if not os.path.exists(dirOut):
    os.makedirs(dirOut)

# load data
print 'Loading data'
data = sio.loadmat(dirIn + 'data.mat')
phi = data['phi']                # nInT x nInPhi
lam = data['lambda']             # nInPhi
mu = data['mu']                  # nInT
osePhi = data['osePhi']          # nOutT x nOutPhi
distOrd = data['distOrd']        # nInT x nInT
oseDistOrd = data['oseDistOrd']  # nOutT x nInT

(nInT, nInPhi) = np.shape(phi)      # (14159 x 200) here
(nOutT, nOutPhi) = np.shape(osePhi)  # (959 x 200) here

truth = osePhi[:, fMode - 1]
nIter = nOutT - tLag


# error calculation functions
def calc_rms(x1, x2):  # must be size nIter x tLag
    u = np.zeros(tLag)
    for i in range(tLag):
        for j in range(nIter):
            u[i] += (x1[j, i] - x2[j, i])**2
        u[i] = np.sqrt(u[i]) / nIter
    return u


def calc_pc(x1, x2):  # must be size nIter x tLag
    u = np.zeros(tLag)
    x1mean = np.zeros(tLag)
    x2mean = np.zeros(tLag)
    x1sdv = np.zeros(tLag)
    x2sdv = np.zeros(tLag)
    for i in range(tLag):
        x1mean[i] = np.mean(x1[:, i])
        x2mean[i] = np.mean(x2[:, i])
        x1sdv[i] = np.std(x1[:, i])
        x2sdv[i] = np.std(x2[:, i])
        for j in range(nIter):
            u[i] += (x1[j, i] - x1mean[i]) * (x2[j, i] - x2mean[i])
        u[i] /= (x1sdv[i] * x2sdv[i] * nIter)
    return u


# Geometric Harmonics forecast
train = phi[:, fMode - 1]
train /= lam[fMode - 1]
nTrain = nInT
train2 = np.concatenate((train, train))

# form cyclicly shifted matrix (nInt x tLag)
print 'Forming cyclicly shifted matrix'
trainC = np.reshape((train), (nInT, 1))
for i in range(tLag - 1):
    trainC = np.concatenate((trainC,
                            np.reshape(train2[i + 1:i + 1 + nTrain],
                                       (nInT, 1))), axis=1)

# form prediction matrix (nOutT x tLag)
print 'Forming prediction matrix'
predFullTrajGH = np.dot(oseDistOrd, trainC) / lam[fMode - 1]
predTrajGH = predFullTrajGH[:nIter, :]

# form truth matrix (nIter x tLag)
truthTraj = np.zeros((nIter, tLag))
for i in range(nIter):
    for j in range(tLag):
        truthTraj[i, j] = truth[i + j]

# form persistence matrix (nIter x tLag)
predTrajP = np.zeros((nIter, tLag))
for i in range(nIter):
    predTrajP[i, :] = truth[i]

# calculate errors
print 'Calculating errors'
rmsGH = calc_rms(predTrajGH, truthTraj)
pcGH = calc_pc(predTrajGH, truthTraj)

rmsP = calc_rms(predTrajP, truthTraj)
pcP = calc_pc(predTrajP, truthTraj)

# make figures
print 'Making plots'
plt.rcParams.update({'font.size': 14})

tt = np.linspace(0, tLag, tLag)

plt.figure()
plt.plot(tt, train[0:tLag])
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
plt.title('Train (in-sample) mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'train.png')

plt.figure()
plt.plot(tt, truth[0:tLag])
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
plt.title('Truth (out-of-sample) mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'truth.png')

plt.figure()
plt.plot(tt, predTrajGH[0, :])
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
plt.title('Forecast mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'pred_GH_only.png')

plt.figure()
plt.plot(tt, truth[0:tLag], 'k', label='truth')
plt.plot(tt, predTrajGH[0, :], 'b', label='forecast')
plt.plot(tt, predTrajP[0, :], 'r', label='persistence')
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
plt.legend()
plt.title('Forecast mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'pred.png')

plt.figure()
plt.plot(tt, rmsGH, 'b', label='forecast')
plt.plot(tt, rmsP, 'r', label='persistence')
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
plt.legend()
plt.title('RMS mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'rms.png')

plt.figure()
plt.plot(tt, pcGH, label='forecast')
plt.plot(tt, pcP, label='persistence')
plt.xlim(0, tLag)
plt.xlabel('lead time (months)')
# plt.ylim(-1,1)
plt.legend()
plt.title('Pattern Correlation mode ' + str(fMode))
plt.savefig(dirOut + 'mode' + str(fMode) + 'pc.png')
