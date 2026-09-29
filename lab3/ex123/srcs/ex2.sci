function [yn, yorigin] = advance(xn, xorigin, k)

    yn = xn;
    yorigin = xorigin + k;

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
    xtitle("Advanced signal y(n) = x(n+k)", "n", "y(n)");
    xgrid();

endfunction
