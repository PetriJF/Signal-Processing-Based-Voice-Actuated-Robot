function c1 = correaltionCoefficent(Ref,Y) % gets max correaltion Coefficent between two signals
    if(size(Ref,1)<size(Y,1)) % checks which signal smaller as it is move through the other signal
        c1=normxcorr2(Ref,Y);
    else
        c1=normxcorr2(Y,Ref);
    end
    c1=max(c1(:,size(Y,2)), [], 'all'); % gets max correaltion Coefficent
    
end