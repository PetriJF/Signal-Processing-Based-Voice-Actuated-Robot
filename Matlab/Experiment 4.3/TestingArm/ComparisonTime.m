C1a=[0,0];
for j = 1:size(ReferenceSignalTimeFormat1,2) % goes through all signals in ref signal
    C1a(j)=correaltionCoefficent(ReferenceSignalTimeFormat1(:,j),Command); % time dome cross correaltion
end

C1b=[0,0];
for j = 1:size(ReferenceSignalTimeFormat2,2) % goes through all signals in ref signal
    C1b(j)=correaltionCoefficent(ReferenceSignalTimeFormat2(:,j),Command); % time dome cross correaltion
end

C1c=[0,0];
for j = 1:size(ReferenceSignalTimeFormat3,2) % goes through all signals in ref signal
    C1c(j)=correaltionCoefficent(ReferenceSignalTimeFormat3(:,j),Command); % time dome cross correaltion
end

C1d=[0,0];
for j = 1:size(ReferenceSignalTimeFormat4,2) % goes through all signals in ref signal
    C1d(j)=correaltionCoefficent(ReferenceSignalTimeFormat4(:,j),Command); % time dome cross correaltion
end

C1e=[0,0];
for j = 1:size(ReferenceSignalTimeFormat5,2) % goes through all signals in ref signal
    C1e(j)=correaltionCoefficent(ReferenceSignalTimeFormat5(:,j),Command); % time dome cross correaltion
end

C1f=[0,0];
for j = 1:size(ReferenceSignalTimeFormat6,2) % goes through all signals in ref signal
    C1f(j)=correaltionCoefficent(ReferenceSignalTimeFormat6(:,j),Command); % time dome cross correaltion
end