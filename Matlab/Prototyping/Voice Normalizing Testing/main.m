clear
close all
clc
[s1, fs] = audioread('leftTest.wav');
s2 = audioread('rightTest.wav');
ampMax = 0.5;
s1_output = audioNormalization_YW(s1, ampMax);
s2_output = audioNormalization_YW(s2, ampMax);

% sound(s1, fs);
figure
subplot(2,2,1)
plot(s1)
xlim([1 length(s1)])
ylim([-1 1])
title('original s1')
subplot(2,2,2)
plot(s2)
xlim([1 length(s2)])
ylim([-1 1])
title('original s2')
subplot(2,2,3)
plot(s1_output)
xlim([1 length(s1_output)])
ylim([-1 1])
title('normalized s1')
subplot(2,2,4)
plot(s2_output)
xlim([1 length(s2_output)])
ylim([-1 1])
title('normalized s2')