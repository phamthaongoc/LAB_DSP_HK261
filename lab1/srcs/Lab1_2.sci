clc;
clear;
clf;

// ========================================
// Bai 1.2
// xa(t) = 3sin(100*pi*t)
// ========================================

// Thong so tin hieu
A = 3;
F = 50;          // Hz
T = 1/F;         // Chu ky = 0.02 s

// Tan so lay mau
Fs = 300;        // samples/s
Ts = 1/Fs;

// Buoc luong tu
Delta = 0.1;

// ========================================
// a) Tin hieu tuong tu xa(t)
// Ve trong 5 chu ky
// ========================================
t = 0:0.0001:5*T;
xa = A*sin(100*%pi*t);

// ========================================
// b), c) Tin hieu roi rac x(n)
// x(n) = 3sin(pi*n/3)
// Chu ky co ban N0 = 6
// Ve trong 5 chu ky
// ========================================
N0 = 6;
n = 0:5*N0;

xn = A*sin(%pi*n/3);

// Dua sai so rat nho ve 0
xn(abs(xn) < 1e-12) = 0;

// ========================================
// d) Luong tu hoa bang phuong phap cat bo
// ========================================
xq = fix(xn/Delta)*Delta;

// Dua sai so rat nho ve 0
xq(abs(xq) < 1e-12) = 0;

// ========================================
// In thong tin ra Console
// ========================================
mprintf("Tan so tin hieu F = %.0f Hz\n", F);
mprintf("Chu ky tin hieu T = %.2f s\n", T);
mprintf("Tan so lay mau Fs = %.0f samples/s\n", Fs);
mprintf("x(n) = 3sin(pi*n/3)\n");
mprintf("Chu ky co ban N0 = %d mau\n", N0);
mprintf("Buoc luong tu Delta = %.1f\n", Delta);

// ========================================
// Ve 3 tin hieu trong cung mot cua so
// ========================================

// Tin hieu xa(t)
subplot(3,1,1);
plot(t, xa);
xgrid();
xtitle("Do thi cua xa(t) = 3sin(100*pi*t)", ...
       "t (s)", "xa(t)");

// Tin hieu x(n)
subplot(3,1,2);
plot2d3(n, xn, style=2);
xgrid();
xtitle("Do thi cua x(n) = 3sin(pi*n/3)", ...
       "index (n)", "x(n)");

// Tin hieu xq(n)
subplot(3,1,3);
plot2d3(n, xq, style=2);
xgrid();
xtitle("Do thi cua xq(n)", ...
       "index (n)", "xq(n)");
