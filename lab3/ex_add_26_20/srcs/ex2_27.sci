clc;
clear;

// Number of samples
N = 10;
n = 0:N;

// Input signal x(n) = 2^n u(n)
x = 2.^n;

// Initial conditions
// y(-2) = 0, y(-1) = 0
y_m2 = 0;
y_m1 = 0;

// Output signal
y = zeros(1, N+1);

// Calculate y(n) recursively
for i = 1:N+1

    // Difference equation:
    // y(n) = (5/6)y(n-1) - (1/6)y(n-2) + x(n)

    y(i) = (5/6)*y_m1 - (1/6)*y_m2 + x(i);

    // Update previous samples
    y_m2 = y_m1;
    y_m1 = y(i);

end

// Analytical solution
// y(n) = (8/5)2^n - (1/2)^n + (2/5)(1/3)^n
y_exact = (8/5)*(2.^n) ...
        - (1/2).^n ...
        + (2/5)*(1/3).^n;

// Display results
disp("Recursive result y(n) = ");
disp(y);

disp("Analytical result y(n) = ");
disp(y_exact);

disp("Maximum error = ");
disp(max(abs(y - y_exact)));

// Plot
scf();
clf();

subplot(2,1,1);
plot2d3(n, x, color("blue"));
xtitle("Input signal x(n) = 2^n u(n)", "n", "x(n)");
xgrid();

subplot(2,1,2);
plot2d3(n, y, color("blue"));
xtitle("System response y(n)", "n", "y(n)");
xgrid();
