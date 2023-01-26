LongSignal=[0,1,1,1,1,1,1,1,1,0];
ShortSignal=[0,0,0,0,1,1,0,0,0,0];
subplot(2,2,1)
plot(LongSignal)
axis padded
subplot(2,2,2)
plot(ShortSignal)
axis padded
subplot(2,2,3)
c1=normxcorr2(LongSignal,LongSignal);
c2=normxcorr2(ShortSignal,LongSignal);
hold on
plot(c1,'g');
plot(c2,'r');
hold off
subplot(2,2,4)
c1=normxcorr2(ShortSignal,ShortSignal);
c2=normxcorr2(ShortSignal,LongSignal);
hold on
plot(c1,'g');
plot(c2,'r');
hold off