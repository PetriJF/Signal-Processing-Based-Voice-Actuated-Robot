clc;

leftSounds = 40;
rightSounds = 40;

[y,SampleRate]=audioread("left1.wav");  % Initial Reading
WindowWidthS=.03; % how wide the time unit is Spectrogram
WindowWidth=floor(WindowWidthS*SampleRate); % how many N in this time unit
OverLapPercentage=.5; % how much percentage the Windows overlap
OverLap = 0.5 * WindowWidth;

for i = 1:leftSounds    
    [y,SampleRate]=audioread("left" + i + ".wav");
    spectrogram(y(:,1),WindowWidth,OverLap,SampleRate,SampleRate,'yaxis');
    saveas(gcf, "left" + i + ".png");
end

for i = 1:rightSounds    
    [y,SampleRate]=audioread("right" + i + ".wav");
    spectrogram(y(:,1),WindowWidth,OverLap,SampleRate,SampleRate,'yaxis');
    saveas(gcf, "right" + i + ".png");
end