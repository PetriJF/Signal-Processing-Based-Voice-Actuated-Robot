C1=[0,0,0,0];
for j = 1:size(ReferenceSignalTimeFormat,2) % goes through all signals in ref signal
    C1(j)=correaltionCoefficent(ReferenceSignalTimeFormat(:,j),Command); % time dome cross correaltion
end
