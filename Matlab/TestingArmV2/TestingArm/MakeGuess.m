Coefficents=C1+C2+C3;           % C1 time dom correlation coeff, C2 FFT coeff, C3 Spectrogram coeff
[M,guess1]=max(Coefficents);
[M,I1]=max(C1);
[M,I2]=max(C2);
[M,I3]=max(C3);
if I1==I2
    guess2=I1;
elseif I1==I3
    guess2=I1;
elseif I2==I3
    guess2=I2;
else
    guess2=guess1
end