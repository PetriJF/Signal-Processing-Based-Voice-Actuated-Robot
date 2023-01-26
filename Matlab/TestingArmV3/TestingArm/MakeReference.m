WindowWidthS=.03; % how wide the time unit is Sp+ectrogram
OverLapPercentage=.5; % how much percentage the Windows overlap
fs = 8000;
WindowWidth=floor(WindowWidthS*fs); % how many N in this time unit
OverLap=floor(OverLapPercentage*WindowWidth); % How much each window over laps

% Signal Changes
ReferenceSignalTimeFormat=[audioread("Up.wav"),audioread("Down.wav"),audioread("Release.wav"),audioread("Grab.wav")];
ReferenceSignalFourierTransform=[audioread("upReff.wav"),audioread("downReff.wav"),audioread("releaseReff.wav"),audioread("grabReff.wav")];

US=spectrogram(ReferenceSignalFourierTransform(:,1),WindowWidth,OverLap,fs,fs,'yaxis');
DS=spectrogram(ReferenceSignalFourierTransform(:,2),WindowWidth,OverLap,fs,fs,'yaxis');
RS=spectrogram(ReferenceSignalFourierTransform(:,3),WindowWidth,OverLap,fs,fs,'yaxis');
GS=spectrogram(ReferenceSignalFourierTransform(:,4),WindowWidth,OverLap,fs,fs,'yaxis');
SpectrogramReference={US, DS, RS, GS};
ReferenceSignalFourierTransform=fft(ReferenceSignalFourierTransform);