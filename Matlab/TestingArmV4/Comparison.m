for j = 1:size(SignalReference,2) % goes through all signals in ref signal
    [C1,Ind1]=correaltionCoefficent(SignalReference(:,j),y); % time dome cross correaltion
    [C2]=correaltionCoefficent(abs(FFTReference(:,j)),abs(testFFT)); % ft cross correaltion
    [C3]=correaltionCoefficentM(abs([SpectrogramReference{:,j}]),abs(testSpectrogram)); % spectrogram cross correaltion
    [C4]=correaltionCoefficentM([MFCCReference{:,j}],testMFCC); % MFCC cross correaltion
    hold on
    if(j==i)
        color='g';
        plot(fileIndex+8*(i-1),C1,'og')
        %plot(fileIndex+8*(i-1),C2,'xg')
        %plot(fileIndex+8*(i-1),C3'*g')
        %plot(fileIndex+8*(i-1),C4,'og')
    else
        plot(fileIndex+8*(i-1),C1,'or')
        %plot(fileIndex+8*(i-1),C2,'xr')
        %plot(fileIndex+8*(i-1),C3,'*r')
        %plot(fileIndex+8*(i-1),C4,'or')
    end
    hold off
    
    % updates to best guess for each domain
    if (MaxC(1)<C1)
        MaxC(1) =C1;
        guess(1)=j;
    end
    if (MaxC(2)<C2)
        MaxC(2) =C2;
        guess(2)=j;
    end
    if (MaxC(3)<C3)
        MaxC(3) =C3;
        guess(3)=j;
    end
    if (MaxC(4)<C4)
        MaxC(4) =C4;
        guess(4)=j;
    end
end