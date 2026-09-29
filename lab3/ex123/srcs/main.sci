clc;
clear;

// Save Console output
diary("C:/LAB_DSP_HK21/lab3/ex123/console/ex1.txt");

// Load functions
exec("C:\LAB_DSP_HK21\lab3\ex123\srcs\ex1.sci", -1);

// Input signal
xn = [1 -2 3 6];
xorigin = 3;

// Exercise 1
disp("Exercise 1");
[y1, o1] = delay(xn, xorigin, 1);

// Stop saving Console
diary(0);
