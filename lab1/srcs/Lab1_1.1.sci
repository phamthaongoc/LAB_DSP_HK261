clc;
clear;

// Bai 1.1

// Cau a
diary('lab1_1_consolve.txt');
x = 1:4;
vector1 = x + 1;

disp("a) Vector 1 la:");
disp(vector1);

// Cau b
x = 1:4;
y = 5:8;
vector2 = x .* y;

disp("b) Vector 2 la:");
disp(vector2);

// Cau c
x = linspace(0, %pi, 10);
vector3 = sin(x);

// Dua sai so rat nho ve 0
vector3(abs(vector3) < 1e-12) = 0;

disp("c) Vector 3 la:");
disp(vector3);

diary(0);
