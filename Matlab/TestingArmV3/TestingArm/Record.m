Fs = 8000;          % Sampling frequency(Hz)
ch = 1;             % Number of channels (Mono)
dataType = 'uint8'; 
nbits = 16; 
recTime = 1;      % The duration of the recording
recording = audiorecorder(Fs, nbits, ch);
disp('Start speaking.');
recordblocking(recording, recTime);
disp('End of Recording.');
voiceRecording = getaudiodata(recording, dataType);
fileName = "RealtimeSignal"+ ".wav";
audiowrite(fileName, voiceRecording, Fs);
disp('Saved!');    
% Normalizing Speech the speech and display that to the user
Command = audioread(fileName);