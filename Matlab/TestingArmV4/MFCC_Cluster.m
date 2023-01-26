CommandMFCC=MFCCgetter(Command);
ClusterMFCC=[0,0];
tolerence=1;
for i=1:length(MFCCRef)
    MFCCReference=MFCCRef{i};
    for j=1:size(MFCCReference,1)
        for k=1:size(MFCCReference,2)
            if(abs(abs(CommandMFCC(j,k))-abs(MFCCReference(j,k)))<tolerence)
                ClusterMFCC(i)=ClusterMFCC(i)+1;
            end
        end
    end
end