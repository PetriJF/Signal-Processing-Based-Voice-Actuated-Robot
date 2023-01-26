clc;

Fs = 8000;  % Sampling frequency(Hz)
ch = 1;     % Number of channels (Mono)
dataType = 'uint8';
nbits = 16; 
recTime = 2.5;
recording = audiorecorder(Fs, nbits, ch);

//detectCommand = '1';                    %chars '0' -> '6'
//arduino = serialport('COM5',9600);      %define arduino on serial port

for i = 1:5 
    pause;
    disp('Start speaking.')
    recordblocking(recording, recTime);
    
    disp('End of Recording.');
    %play(recording);
    
    voice = getaudiodata(recording, dataType);
    audiowrite('recording.wav', voice, Fs);
    [y,SampleRate]=audioread('recording.wav');
    
    WindowWidthS=.03; % how wide the time unit is Spectrogram
    WindowWidth=floor(WindowWidthS*SampleRate); % how many N in this time unit
    OverLapPercentage=.5; % how much percentage the Windows overlap
    OverLap = 0.5 * WindowWidth;
    
    % Create spectrogram
    spectrogram(y(:,1),WindowWidth,OverLap,SampleRate,SampleRate,'yaxis');
    
    % Keras Classifier
    
    
    % Arduino Application
    write(arduino, detectCommand, 'char');
    
    clc;
end 
clear