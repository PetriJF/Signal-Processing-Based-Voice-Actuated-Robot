f=0.8;
n=6;
b=fir1(n,f,'low');  %low pass fir filter
Command=filter(b,1,Command);    %passing audio though low pass filter