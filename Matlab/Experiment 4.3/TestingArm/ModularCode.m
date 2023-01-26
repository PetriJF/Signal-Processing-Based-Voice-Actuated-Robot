recordingCount = 1;

correctCountTD = 0;
correctCountFD = 0;
correctCountTDS = 0;
correctCountFDS = 0;
correctGuess = 1;   % 1 for left, 2 for right

for i = 1 : recordingCount
    % Display the count of the recording we are on and wait for the user to
    % be ready to record!
    disp("Recording " + int2str(i) + " of " + int2str(recordingCount));
    pause;
    pause(0.2);
    Record;
    ComparisonTime;
    ComparisonFourier;
    ComparisonSingular;
    MakeGuess;

    
    if (guess1 == correctGuess)
        correctCountTD = correctCountTD + 1;
    end
    if (guess2 == correctGuess)
        correctCountFD = correctCountFD + 1;
    end
    if (guess3 == correctGuess)
        correctCountTDS = correctCountTDS + 1;
    end
    if (guess4 == correctGuess)
        correctCountFDS = correctCountFDS + 1;
    end
end
%clc;
disp("Time domain accuracy method 1: " + num2str(((correctCountTD / recordingCount) * 100), '%.2f') + "%");
disp("Fourier domain accuracy method 1: " + num2str(((correctCountFD / recordingCount) * 100), '%.2f') + "%");
disp("Time domain accuracy method 2: " + num2str(((correctCountTDS / recordingCount) * 100), '%.2f') + "%");
disp("Fourier domain accuracy method 2: " + num2str(((correctCountFDS / recordingCount) * 100), '%.2f') + "%");