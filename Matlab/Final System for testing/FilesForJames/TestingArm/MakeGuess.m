%Time domain
C1 = C1a + C1b + C1c + C1d + C1e + C1f;
[M,I1] = max(C1);
guess1 = I1;

%Fourier domain
C2 = C2a + C2b + C2c + C2d + C2e + C2f;
[M,I2] = max(C2);
guess2 = I2;

%Time domain
[M,I3] = max(CsT);
if (I3 > 6)
    guess3 = 2;
else
    guess3 = 1;
end
    
%Fourier domain
[M,I4] = max(CsF);
if (I4 > 6)
    guess4 = 2;
else
    guess4 = 1;
end