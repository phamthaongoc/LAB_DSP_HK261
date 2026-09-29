clc;
clear;

// Parameters
a1 = -0.9;
y_m1 = 1;

// Time index
n = 0:49;

// Transient response
// y_zi(n) = (-a1)^(n+1) y(-1)
yzi = (-a1).^(n+1) * y_m1;

// Steady-state response
// y_zs(n) = [1 - (-a1)^(n+1)] / (1+a1)
yzs = (1 - (-a1).^(n+1)) / (1 + a1);

// Display
disp("Transient response y_zi(n) = ");
disp(yzi);

disp("Steady-state response y_zs(n) = ");
disp(yzs);

// Plot
scf();
clf();

subplot(2,1,1);
plot2d3(n, yzi, color("blue"));
xtitle("Transient response y_zi(n)", "n", "y_zi(n)");
xgrid();

subplot(2,1,2);
plot2d3(n, yzs, color("blue"));
xtitle("Steady-state response y_zs(n)", "n", "y_zs(n)");
xgrid();
