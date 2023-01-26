clear; clc;
recordingCount = 3;
%arduino = serialport('COM5',9600);      %define arduino on serial port

correctCountTD = 0;
correctGuess = 7;   % 1 for left, 2 for right, 3 for up, 4 for down, 5 for front, 6 for back, 7 for grab, 8 for release

MakeReference;

for i = 1 : recordingCount
    % Display the count of the recording we are on and wait for the user to
    % be ready to record!
    disp("Recording " + int2str(i) + " of " + int2str(recordingCount));
    pause;          % Wait for input to be given
    pause(0.2);     % Slight delay
    Record;         % Record the speech signal
    ComparisonTime; % Cross Correlation
    MakeGuess;      % Return the highest coefficient, i.e the word with the highest scord

    
    if (guess1 == correctGuess)
        correctCountTD = correctCountTD + 1;
    end
    %write(arduino, detectCommand, 'char'); % Send command to the transmitter 
                                            % ardiuno in order to transmit it to the robot.
end
%clc;
disp("Time domain accuracy method 1: " + num2str(((correctCountTD / recordingCount) * 100), '%.2f') + "%");
