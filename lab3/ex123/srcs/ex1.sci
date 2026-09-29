function [yn, yorigin] = delay(xn, xorigin, k)

    // Delay: y(n) = x(n-k)
    yn = xn;
    yorigin = xorigin - k;

    // Time indices
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    // Display result
    disp("yn = ");
    disp(yn);

    disp("yorigin = ");
    disp(yorigin);

    // Plot x(n) and y(n) in the same figure
    scf();
    clf();

    subplot(2,1,1);
    plot2d3(nx, xn, color("blue"));
    xtitle("Original signal x(n)", "n", "x(n)");
    xgrid();

    subplot(2,1,2);
    plot2d3(ny, yn, color("blue"));
    xtitle("Delayed signal y(n) = x(n-k)", "n", "y(n)");
    xgrid();

endfunction
