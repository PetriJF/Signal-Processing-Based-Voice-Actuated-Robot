function Coefficents = MFCCgetter(Y) % gets MFCCs of signal Y
    fs=16000;
    numFilters = 20; % number of fliters in mel fliter bank
    filterbankStart = 62.5; % starting frequency of fliter bank
    filterbankEnd = 8000; % ending frequency of fliter bank
    numBandEdges = numFilters + 2; 
    NFFT = 1024; % coeeficent in fast fourier transform
    filterBank = zeros(numFilters,NFFT); % mel fliter bank
    bandEdges = logspace(log10(filterbankStart),log10(filterbankEnd),numBandEdges); % bins for fliters
    bandEdgesBins = round((bandEdges/fs)*NFFT) + 1;
    for i = 1:numFilters % creates fliter bank
         filt = triang(bandEdgesBins(i+2)-bandEdgesBins(i));
         leftPad = bandEdgesBins(i);
         rightPad = NFFT - numel(filt) - leftPad;
         filterBank(i,:) = [zeros(1,leftPad),filt',zeros(1,rightPad)];
    end
    [S,~,t] = stft(Y,fs,"Window",hann(NFFT,'periodic'),"FrequencyRange","twosided"); % gets stft of Y
    S = abs(S); % get absoulter value of stft
    spec = filterBank*S; % applies fliter bank
    Coefficents=dct(spec,13); % applies discrete cosine transform to signal
end    