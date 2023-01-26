Spec=spectrogram(Command,WindowWidth,OverLap,fs,fs,'yaxis');
ClusterSpec=[0,0];
tolerence=.01;
for i=1:length(SpectrogramReference)
    SpecReference=SpectrogramReference{i};
    for j=1:size(SpecReference,1)
        for k=1:size(SpecReference,2)
            %abs(Spec(j,k))
            %abs(SpecReference(j,k))
            if(abs(abs(Spec(j,k))-abs(SpecReference(j,k)))<tolerence)
                ClusterSpec(i)=ClusterSpec(i)+1;
            end
        end
    end
end
ClusterSpec