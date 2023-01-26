% Do cross-correlation for each reference compared to the recorded word

C1a=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat1,2) % goes through all signals in ref signal 1
    C1a(j)=correaltionCoefficent(ReferenceSignalTimeFormat1(:,j),Command); % time dome cross correaltion
end

C1b=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat2,2) % goes through all signals in ref signal 2
    C1b(j)=correaltionCoefficent(ReferenceSignalTimeFormat2(:,j),Command); % time dome cross correaltion
end

C1c=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat3,2) % goes through all signals in ref signal 3
    C1c(j)=correaltionCoefficent(ReferenceSignalTimeFormat3(:,j),Command); % time dome cross correaltion
end

C1d=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat4,2) % goes through all signals in ref signal 4
    C1d(j)=correaltionCoefficent(ReferenceSignalTimeFormat4(:,j),Command); % time dome cross correaltion
end

C1e=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat5,2) % goes through all signals in ref signal 5 
    C1e(j)=correaltionCoefficent(ReferenceSignalTimeFormat5(:,j),Command); % time dome cross correaltion
end

C1f=[0,0,0,0,0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat6,2) % goes through all signals in ref signal 6 
    C1f(j)=correaltionCoefficent(ReferenceSignalTimeFormat6(:,j),Command); % time dome cross correaltion
end