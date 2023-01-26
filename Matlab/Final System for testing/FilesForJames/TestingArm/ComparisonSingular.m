% Time
CsT=[0,0,0,0,0,0,0,0,0,0,0,0];
for j = 1:size(SingularReferenceFormat, 2) % goes through all signals in ref signal
    CsT(j)=correaltionCoefficent(SingularReferenceFormat(:,j),Command); % time dome cross correaltion
end

Fourier=fft(Command);
CsF=[0,0,0,0,0,0,0,0,0,0,0,0];
for j = 1:size(SingularReferenceFormat, 2) % goes through all signals in ref signal
    CsF(j)=correaltionCoefficent(abs(SingularReferenceFormat(:,j)),abs(Fourier)); % FFT cross correaltion
end