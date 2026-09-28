clc;
clear;
clf;

// (a)
n1 = 0:400;
x1 = cos(0.01*%pi*n1);

// (b)
n2 = 0:21;
x2 = cos(%pi*30*n2/105);

// (c)
n3 = 0:10;
x3 = cos(3*%pi*n3);

// (d)
n4 = 0:50;
x4 = sin(3*n4);

// (e)
n5 = 0:30;
x5 = sin(%pi*62*n5/10);

// Plot
subplot(3,2,1);
plot2d3(n1,x1);
title("(a) cos(0.01*pi*n), N0 = 200");
xlabel("n");
ylabel("x[n]");

subplot(3,2,2);
plot2d3(n2,x2);
title("(b) cos(30*pi*n/105), N0 = 7");
xlabel("n");
ylabel("x[n]");

subplot(3,2,3);
plot2d3(n3,x3);
title("(c) cos(3*pi*n), N0 = 2");
xlabel("n");
ylabel("x[n]");

subplot(3,2,4);
plot2d3(n4,x4);
title("(d) sin(3*n), aperiodic");
xlabel("n");
ylabel("x[n]");

subplot(3,2,5);
plot2d3(n5,x5);
title("(e) sin(62*pi*n/10), N0 = 10");
xlabel("n");
ylabel("x[n]");
