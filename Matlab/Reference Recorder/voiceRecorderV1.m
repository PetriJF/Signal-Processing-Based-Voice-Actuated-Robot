%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TUTORIAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The first step is to modify the variable "recordingCount" to the number %
% of voice recordings you want. After that, hit run. Once the code it is  %
% running, there is NO proper way of stopping it other than a hard stop.  %
%                                                                         %
% For using the program, make sure your microphone is set up and your     %
% Command window is open. In the command window, press any key(eg. arrow).%
% The Command Window will state that the recording has started and you    %
% have "recTime" secs to do the recording. After that, the recording will %
% be saved as recordingX.wav, X representing the count of the recording.  %
% If you want a specific name, then you can change it by replacing        %
% "recording" in the variable "fileName" with whatever you need (For      %
% example leftX). For any questions, contact JFP.                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear everything.
clc;
clear;

Fs = 44100;         % Sampling frequency(Hz)
ch = 1;             % Number of channels (Mono)
dataType = 'uint8'; % Data type
nbits = 16;         % 8, 16 or 24
recTime = 2;        % The duration of the recording
dev_id = getfield(getfield(audiodevinfo, 'input'), 'ID');
recording = audiorecorder(Fs, nbits, ch, dev_id);

recordingCount = 6; % The amount of recordings to make

% Filters
f=0.8;
n=6;
lpFilter = fir1(n,f,'low');  %low pass fir filter

figure();

for i = 1 : recordingCount
    % Display the count of the recording we are on and wait for the user to
    % be ready to record!
    disp("Recording " + int2str(i) + " of " + int2str(recordingCount));
    pause;
    pause(0.2);
    % Start the recording and speak
    disp('Start speaking.');
    recordblocking(recording, recTime);

    % Recording ends
    disp('End of Recording.');
%    play(recording)    % Uncomment to hear what you recorded
    
    % Save the recording and state that to the user
    voiceRecording = getaudiodata(recording, dataType);
    fileName = "leftRef" + int2str(i) + ".wav"
    audiowrite(fileName, voiceRecording, Fs);
    disp('Saved!');
    
    % Filtering implemented on the normalized signal.
    original = audioread(fileName);
%     lowPassFiltered = filter(lpFilter,1, original);    % passing audio though low pass filter
    
    t = linspace(0, 1, size(original,1))'/Fs;
    plot(t, original);
    title("Voice recordings");
    ylabel("Voice signal (Normalized -1, 1)");
    xlabel("Time (s)");
    hold on;
    
    sound(original, Fs);        % Uncomment to listen to normalized audio
    %pause(recTime);            % Wait for the recording to be played
    
    clc;
end
hold off;