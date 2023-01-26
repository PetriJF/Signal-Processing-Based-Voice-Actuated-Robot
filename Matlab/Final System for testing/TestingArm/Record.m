Fs = 44100;         % Sampling frequency(Hz)
FcL = 6000;
fcl= FcL/Fs;
FcH= 670;
fch= FcH/Fs;
n=6000;
T=1/Fs;
lpFilterHigh = fir1(n,fch,'high');  %low pass fir filter
ch = 1;             % Number of channels (Mono)
dataType = 'uint8'; % Data type
nbits = 16;         % 8, 16 or 24
recTime = 2;        % The duration of the recording
dev_id = getfield(getfield(audiodevinfo, 'input'), 'ID');
recording = audiorecorder(Fs, nbits, ch, dev_id);


% Record the sound
disp('Start speaking.');
recordblocking(recording, recTime);

% Get the audio data
disp('End of Recording.');

voiceRecording = getaudiodata(recording, dataType);

% Save the file
fileName = "RealtimeSignal" + ".wav";
audiowrite(fileName, voiceRecording, Fs);
original = audioread(fileName);
original=filter(lpFilterHigh,1,original);
audiowrite(fileName, original, Fs);
disp('Saved!');    

% Remember the recording
Command = audioread(fileName);
%sound(Command, Fs);