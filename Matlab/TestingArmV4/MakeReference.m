WindowWidthS=.03; % how wide the time unit is Sp+ectrogram
OverLapPercentage=.5; % how much percentage the Windows overlap
fs = 8000;
WindowWidth=floor(WindowWidthS*fs); % how many N in this time unit
OverLap=floor(OverLapPercentage*WindowWidth); % How much each window over laps

% Signal Changes
%ReferenceSignalTimeFormat=[audioread("Up.wav"),audioread("Down.wav"),audioread("Release.wav"),audioread("Grab.wav")];
%ReferenceSignalFourierTransform=[audioread("UpReff.wav"),audioread("DownReff.wav"),audioread("ReleaseReff.wav"),audioread("GrabReff.wav")];

ReferenceSignalTimeFormat=[audioread("LRR.wav"),audioread("RRR.wav")];
ReferenceSignalFourierTransform=[audioread("leftReff.wav"),audioread("rightReff.wav")];

LS=spectrogram(ReferenceSignalFourierTransform(:,1),WindowWidth,OverLap,fs,fs,'yaxis');
RS=spectrogram(ReferenceSignalFourierTransform(:,2),WindowWidth,OverLap,fs,fs,'yaxis');
SpectrogramReference={LS,RS};

MFCCRef={MFCCgetter(ReferenceSignalFourierTransform(:,1)),MFCCgetter(ReferenceSignalFourierTransform(:,2))};

ReferenceSignalFourierTransform=fft(ReferenceSignalFourierTransform);