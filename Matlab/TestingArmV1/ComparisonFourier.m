C2=[0,0];
C3=[0,0];
Spec=spectrogram(Command,WindowWidth,OverLap,fs,fs,'yaxis');
Fourier=fft(Command);
for j = 1:size(ReferenceSignalTimeFormat,2) % goes through all signals in ref signal
    C2(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform(:,j)),abs(Fourier)); % FFT cross correaltion
    C3(j)=correaltionCoefficent(abs([SpectrogramReference{:,j}]),abs(Spec));
end