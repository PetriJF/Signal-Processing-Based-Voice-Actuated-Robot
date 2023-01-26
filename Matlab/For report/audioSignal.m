clc;
clear;

Fs = 8000;          % Sampling frequency(Hz)
ch = 1;             % Number of channels (Mono)
dataType = 'uint8'; 
nbits = 16; 
recTime = 1;      % The duration of the recording
recording = audiorecorder(Fs, nbits, ch);

recordingCount = 4; % The amount of recordings to make

normalizingRatio = 0.5; % The ratio for the normalizer between 0 and 1

% Filters
f=0.8;
n=6;
lpFilter = fir1(n,f,'low');  %low pass fir filter

figure();
recordblocking(recording, recTime); 

% Recording ends
disp('End of Recording.');

voiceRecording = getaudiodata(recording, dataType);

plot(voiceRecording);
title("Sample audio speech");
xlabel("Sampling Frequency (8000 for a second)");
ylabel("Amplitude");