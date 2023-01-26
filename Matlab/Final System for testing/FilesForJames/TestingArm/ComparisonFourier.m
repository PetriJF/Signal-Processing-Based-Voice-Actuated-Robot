Fourier=fft(Command);

C2a=[0,0];
for j = 1:size(ReferenceSignalFourierTransform1,2) % goes through all signals in ref signal
    C2a(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform1(:,j)),abs(Fourier)); % FFT cross correaltion
end

C2b=[0,0];
for j = 1:size(ReferenceSignalFourierTransform2,2) % goes through all signals in ref signal
    C2b(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform2(:,j)),abs(Fourier)); % FFT cross correaltion
end

C2c=[0,0];
for j = 1:size(ReferenceSignalFourierTransform3,2) % goes through all signals in ref signal
    C2c(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform3(:,j)),abs(Fourier)); % FFT cross correaltion
end

C2d=[0,0];
for j = 1:size(ReferenceSignalFourierTransform4,2) % goes through all signals in ref signal
    C2d(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform4(:,j)),abs(Fourier)); % FFT cross correaltion
end

C2e=[0,0];
for j = 1:size(ReferenceSignalFourierTransform5,2) % goes through all signals in ref signal
    C2e(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform5(:,j)),abs(Fourier)); % FFT cross correaltion
end

C2f=[0,0];
for j = 1:size(ReferenceSignalFourierTransform6,2) % goes through all signals in ref signal
    C2f(j)=correaltionCoefficent(abs(ReferenceSignalFourierTransform6(:,j)),abs(Fourier)); % FFT cross correaltion
end