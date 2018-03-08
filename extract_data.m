%%% extract eigenfunctions and pairwise distances %%%


%%% load experiment %%%

% expmt = 'sst_ip_ccsm4_emb20'
% [model, In] = ccsmNLSAModel_12_01(expmt);
% % path /kontiki_array5/joannas/ose_darin/version/examples/ccsm4
% % in-sample 1200 years, out-of-sample 100 years
% % 20 years embedding window

experiment = 'ip_sst'
[ model, In ] = ccsmNLSAModel_in_out_2( experiment );
% path /kontiki_array1/joannas/nlsa_2017-06-03/examples/ccsm
% in-sample 1200 years, out-of-sample 100 years
% 20 years embedding window


%%% get eigenfunctions %%%
phiPath = model.diffOp.path;
phiPath = fullfile(model.diffOp.path, model.diffOp.pathPhi);
load(fullfile(phiPath, 'dataPhi.mat'));
load(fullfile(phiPath, 'dataLambda.mat'));
phi = v;

%%% get OSE eigenfunctions %%%
osePhiPath = fullfile(model.oseDiffOp.path,model.oseDiffOp.pathPhi);
% osePhi = load(fullfile(osePhiPath, 'dataPhi.mat'));

% dcnote - automate this - now in batches of 8
osePhi = 0;
load(fullfile(osePhiPath,'dataPhi_1-8.mat'));
osePhi = v;
load(fullfile(osePhiPath,'dataPhi_9-16.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_17-24.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_25-32.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_33-40.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_41-48.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_49-56.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_57-64.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_65-72.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_73-80.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_81-88.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_89-96.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_97-104.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_105-112.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_113-120.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_121-128.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_129-136.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_137-144.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_145-152.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_153-160.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_161-168.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_169-176.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_177-184.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_185-192.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_193-200.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_201-208.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_209-216.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_217-224.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_225-232.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_233-240.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_241-248.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_249-256.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_257-264.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_265-272.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_273-280.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_281-288.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_289-296.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_297-304.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_305-312.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_313-320.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_321-328.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_329-336.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_337-344.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_345-352.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_353-360.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_361-368.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_369-376.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_377-384.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_385-392.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_393-400.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_401-408.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_409-416.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_417-424.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_425-432.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_433-440.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_441-448.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_449-456.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_457-464.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_465-472.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_473-480.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_481-488.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_489-496.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_497-504.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_505-511.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_512-518.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_519-525.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_526-532.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_533-539.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_540-546.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_547-553.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_554-560.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_561-567.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_568-574.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_575-581.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_582-588.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_589-595.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_596-602.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_603-609.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_610-616.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_617-623.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_624-630.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_631-637.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_638-644.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_645-651.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_652-658.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_659-665.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_666-672.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_673-679.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_680-686.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_687-693.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_694-700.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_701-707.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_708-714.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_715-721.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_722-728.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_729-735.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_736-742.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_743-749.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_750-756.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_757-763.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_764-770.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_771-777.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_778-784.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_785-791.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_792-798.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_799-805.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_806-812.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_813-819.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_820-826.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_827-833.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_834-840.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_841-847.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_848-854.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_855-861.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_862-868.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_869-875.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_876-882.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_883-889.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_890-896.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_897-903.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_904-910.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_911-917.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_918-924.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_925-931.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_932-938.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_939-945.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_946-952.mat'));
osePhi = [osePhi; v];
load(fullfile(osePhiPath,'dataPhi_953-959.mat'));
osePhi = [osePhi; v];


%%% get in-sample distances %%%
distPath = fullfile( model.pDistance.path, model.pDistance.pathY );

% now in batches of 111
inDist = 0;
yind = 0;
load(fullfile(distPath,'dataY_1-111.mat'))
inDist = yVal;
yind = yInd;
load(fullfile(distPath,'dataY_112-222.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_223-333.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_334-444.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_445-555.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_556-666.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_667-777.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_778-888.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_889-999.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1000-1110.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1111-1221.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1222-1332.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1333-1443.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1444-1554.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1555-1665.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1666-1776.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1777-1887.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1888-1998.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_1999-2109.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2110-2220.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2221-2331.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2332-2442.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2443-2553.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2554-2664.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2665-2775.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2776-2886.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2887-2997.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_2998-3108.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3109-3219.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3220-3330.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3331-3441.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3442-3552.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3553-3663.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3664-3774.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3775-3885.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3886-3996.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_3997-4107.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4108-4218.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4219-4329.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4330-4440.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4441-4551.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4552-4662.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4663-4773.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4774-4884.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4885-4995.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_4996-5106.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5107-5217.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5218-5328.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5329-5439.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5440-5550.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5551-5661.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5662-5772.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5773-5883.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5884-5994.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_5995-6105.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6106-6216.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6217-6327.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6328-6438.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6439-6549.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6550-6660.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6661-6771.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6772-6882.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6883-6993.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_6994-7104.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7105-7215.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7216-7326.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7327-7437.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7438-7548.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7549-7659.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7660-7770.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7771-7881.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7882-7992.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_7993-8103.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8104-8214.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8215-8325.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8326-8436.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8437-8547.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8548-8658.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8659-8769.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8770-8879.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8880-8989.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_8990-9099.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9100-9209.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9210-9319.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9320-9429.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9430-9539.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9540-9649.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9650-9759.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9760-9869.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9870-9979.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_9980-10089.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10090-10199.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10200-10309.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10310-10419.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10420-10529.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10530-10639.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10640-10749.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10750-10859.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10860-10969.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_10970-11079.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11080-11189.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11190-11299.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11300-11409.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11410-11519.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11520-11629.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11630-11739.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11740-11849.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11850-11959.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_11960-12069.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12070-12179.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12180-12289.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12290-12399.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12400-12509.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12510-12619.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12620-12729.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12730-12839.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12840-12949.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_12950-13059.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13060-13169.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13170-13279.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13280-13389.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13390-13499.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13500-13609.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13610-13719.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13720-13829.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13830-13939.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_13940-14049.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];
load(fullfile(distPath,'dataY_14050-14159.mat'))
inDist = [inDist; yVal];
yind = [yind; yInd];


distOrd = zeros(size(inDist));
[disti, distj] = size(inDist);
for i = 1:disti
   	for j = 1:distj
       	distOrd(i,yind(i,j)) = inDist(i,j);
   	end
end

% row normalize
for i = 1:disti
	distOrd(i,:) = distOrd(i,:)/sum(distOrd(i,:));
end	


%%% load out-of-sample distances %%%
oseDistPath = fullfile(model.osePDistance.path, model.osePDistance.pathY);

% now in batches of 8
oseDist = 0;
yind = 0;
load(fullfile(oseDistPath,'dataY_1-8.mat'))
oseDist = yVal;
yind = yInd;
load(fullfile(oseDistPath,'dataY_9-16.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_17-24.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_25-32.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_33-40.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_41-48.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_49-56.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_57-64.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_65-72.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_73-80.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_81-88.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_89-96.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_97-104.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_105-112.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_113-120.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_121-128.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_129-136.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_137-144.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_145-152.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_153-160.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_161-168.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_169-176.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_177-184.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_185-192.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_193-200.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_201-208.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_209-216.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_217-224.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_225-232.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_233-240.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_241-248.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_249-256.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_257-264.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_265-272.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_273-280.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_281-288.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_289-296.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_297-304.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_305-312.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_313-320.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_321-328.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_329-336.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_337-344.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_345-352.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_353-360.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_361-368.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_369-376.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_377-384.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_385-392.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_393-400.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_401-408.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_409-416.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_417-424.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_425-432.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_433-440.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_441-448.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_449-456.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_457-464.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_465-472.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_473-480.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_481-488.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_489-496.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_497-504.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_505-511.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_512-518.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_519-525.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_526-532.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_533-539.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_540-546.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_547-553.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_554-560.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_561-567.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_568-574.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_575-581.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_582-588.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_589-595.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_596-602.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_603-609.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_610-616.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_617-623.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_624-630.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_631-637.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_638-644.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_645-651.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_652-658.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_659-665.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_666-672.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_673-679.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_680-686.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_687-693.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_694-700.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_701-707.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_708-714.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_715-721.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_722-728.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_729-735.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_736-742.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_743-749.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_750-756.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_757-763.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_764-770.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_771-777.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_778-784.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_785-791.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_792-798.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_799-805.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_806-812.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_813-819.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_820-826.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_827-833.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_834-840.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_841-847.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_848-854.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_855-861.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_862-868.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_869-875.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_876-882.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_883-889.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_890-896.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_897-903.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_904-910.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_911-917.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_918-924.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_925-931.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_932-938.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_939-945.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_946-952.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];
load(fullfile(oseDistPath,'dataY_953-959.mat'))
oseDist = [oseDist; yVal];
yind = [yind; yInd];

oseDistOrd = zeros(size(oseDist));
[disti, distj] = size(oseDist);
for i = 1:disti
   	for j = 1:distj
       	oseDistOrd(i,yind(i,j)) = oseDist(i,j);
   	end
end

% row normalize
for i = 1:disti
	oseDistOrd(i,:) = oseDistOrd(i,:)/sum(oseDistOrd(i,:));
end


%%% save data %%%
saveDir = fullfile('forecast_data/', expmt,'/');
if exist(saveDir) == 0
    mkdir(saveDir)
end
S = fullfile(strcat(saveDir,'data.mat'));
save(S,'phi','lambda','mu','osePhi','distOrd','oseDistOrd')

