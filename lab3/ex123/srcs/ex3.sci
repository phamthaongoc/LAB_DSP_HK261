function [yn, yorigin] = fold(xn, xorigin)

    N = length(xn);

    // Reverse the signal
    yn = xn($:-1:1);

    // New origin
    yorigin = N - xorigin + 1;

    // Time indices
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    // Display results
    disp("yn = ");
    disp(yn);

    disp("yorigin = ");
    disp(yorigin);

    // Plot
    scf();
    clf();

    subplot(2,1,1);
    plot2d3(nx, xn, color("blue"));
    xtitle("Original signal x(n)", "n", "x(n)");
    xgrid();

    subplot(2,1,2);
    plot2d3(ny, yn, color("blue"));
    xtitle("Folded signal y(n) = x(-n)", "n", "y(n)");
    xgrid();

endfunction
