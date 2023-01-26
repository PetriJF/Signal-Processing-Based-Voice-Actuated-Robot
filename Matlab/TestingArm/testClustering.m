%visulise steps
x = audioread("RealtimeSignal.wav");
x1 = audioread("leftReff.wav");
x2 = audioread("rightReff.wav");
%x3 = audioread("UpReff.wav");

tiledlayout(6,1)
nexttile;
hold on
plot(x);
plot(x1);
plot(x2);
%plot(x3);

y = abs(fft(x));
y1 = abs(fft(x1));
y2 = abs(fft(x2));
%y3 = abs(fft(x3));
nexttile;
hold on;
plot(y);
plot(y1);
plot(y2);
%plot(y3);

z = log(y);
z1 = log(y1);
z2 = log(y2);
%z3 = log(y3);
nexttile;
hold on;
        
plot(z);
plot(z1);
plot(z2);
%plot(z3);

ev = zeros(400,1);
ev1 = zeros(400,1);
ev2 = zeros(400,1);
%ev3 = zeros(400,1);
for i = 1:20000
    if(mod(i,50) == 0)
       ev(i/50,1) = z(i,1);
       ev1(i/50,1) = z1(i,1);
       ev2(i/50,1) = z2(i,1);
       %ev3(i/50,1) = z3(i,1);
    end
end
nexttile;
hold on
plot(ev);
plot(ev1);
plot(ev2);
%plot(ev3);

%{
ev = zeros(100,1);
ev1 = zeros(100,1);
ev2 = zeros(100,1);
ev3 = zeros(100,1);
for i = 1:20000
    if(mod(i,200) == 0)
       ev(i/200,1) = z(i,1);
       ev1(i/200,1) = z1(i,1);
       ev2(i/200,1) = z2(i,1);
       ev3(i/200,1) = z3(i,1);
    end
end
nexttile;
hold on
plot(ev);
plot(ev1);
plot(ev2);
plot(ev3);
%}

trial1 = conv(ev,ev1);
trial2 = conv(ev,ev2);
%trial3 = conv(ev,ev3);

nexttile;
hold on
plot(trial1);
plot(trial2);
%plot(trial3);
legend('trial1','trial2','trial3');


[maxSignal, i] = max(trial1);
maxSignal
[maxSignal, i] = max(trial2);
maxSignal
%[maxSignal, i] = max(trial3);
%maxSignal

%the real big boi clustering
tolerance = 1;
clusteredPoints = 0;
for i = 1:400
    if(ev(i,1)-ev1(i,1)>=tolerance)
        clusteredPoints = clusteredPoints + 1;
    end
end
clusteredPoints
clusteredPoints = 0;
for i = 1:400
    if(ev(i,1)-ev2(i,1)>=tolerance)
        clusteredPoints = clusteredPoints + 1;
    end
end
clusteredPoints
clusteredPoints = 0;

for i = 1:400
    if(ev(i,1)-ev3(i,1)>=tolerance)
        clusteredPoints = clusteredPoints + 1;
    end
end

clusteredPoints