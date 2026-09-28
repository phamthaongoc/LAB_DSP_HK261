clc;
clear;
clf;

// Tham so
F0 = 2000;      // 2 kHz
Fs = 50000;     // 50 kHz

// Tin hieu x[n]
n = 0:99;
x = sin(2*%pi*(F0/Fs)*n);

// Lay cac mau co chi so chan: y[n] = x[2n]
m = 0:49;
y = sin(2*%pi*(F0/Fs)*(2*m));

// Ve x[n]
subplot(2,1,1);
plot2d3(n, x);
title("x[n], F0 = 2 kHz, Fs = 50 kHz");
xlabel("n");
ylabel("x[n]");

// Ve y[n]
subplot(2,1,2);
plot2d3(m, y);
title("y[n] = x[2n], Fs'' = 25 kHz");
xlabel("n");
ylabel("y[n]");
