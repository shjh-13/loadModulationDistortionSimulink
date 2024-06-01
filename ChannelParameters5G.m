% Select the NR-TM waveform parameters
nrtm = "NR-FR1-TM3.1";  % NR-TM name and properties
bw   = "5MHz";  % Channel bandwidth
scs  = "30kHz";  % Subcarrier spacing
dm   = "TDD";  % Duplexing mode
tmWaveGen = hNRReferenceWaveformGenerator(nrtm,bw,scs,dm);
tmWaveGen = makeConfigWritable(tmWaveGen);
tmWaveGen.Config.WindowingPercent = 0;    
[tmWaveform,tmWaveInfo] = generateWaveform(tmWaveGen);
samplingRate = tmWaveInfo.Info.SamplingRate;
aclrParameters = hACLRParametersNR(tmWaveGen.Config);
disp(aclrParameters);