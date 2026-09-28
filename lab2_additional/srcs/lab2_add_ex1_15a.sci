clc;
clear;
clf;

Fs = 5000;
n = 0:99;

F01 = 500;
F02 = 2000;
F03 = 3000;
F04 = 4500;

x1 = sin(2*%pi*(F01/Fs)*n);
x2 = sin(2*%pi*(F02/Fs)*n);
x3 = sin(2*%pi*(F03/Fs)*n);
x4 = sin(2*%pi*(F04/Fs)*n);

subplot(2,2,1);
plot2d3(n,x1);
title("Fs = 5 kHz, F0 = 0.5 kHz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,2);
plot2d3(n,x2);
title("Fs = 5 kHz, F0 = 2 kHz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,3);
plot2d3(n,x3);
title("Fs = 5 kHz, F0 = 3 kHz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,4);
plot2d3(n,x4);
title("Fs = 5 kHz, F0 = 4.5 kHz");
xlabel("n");
ylabel("x[n]");
