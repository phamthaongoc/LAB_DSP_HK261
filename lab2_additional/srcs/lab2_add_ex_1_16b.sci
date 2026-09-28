clc;
clear;
clf;

// Parameters
f0 = 1/50;
N = 200;
n = 0:N-1;

// Original signal
x = sin(2*%pi*f0*n);

// Quantization levels
L_list = [64 128 256];

for k = 1:length(L_list)

    L = L_list(k);

    // Quantization step
    delta = 2/(L-1);

    // Quantization using rounding
    q_index = round((x + 1)/delta);

    // Limit index to [0, L-1]
    q_index(q_index < 0) = 0;
    q_index(q_index > L-1) = L-1;

    // Quantized signal
    xq = -1 + q_index*delta;

    // Quantization error
    e = xq - x;

    // Signal power
    Px = sum(x.^2)/N;

    // Quantization error power
    Pq = sum(e.^2)/N;

    // SQNR
    SQNR = 10*log10(Px/Pq);

    // Print results
    mprintf("L = %d\n", L);
    mprintf("Delta = %f\n", delta);
    mprintf("Px = %f\n", Px);
    mprintf("Pq = %e\n", Pq);
    mprintf("SQNR = %.4f dB\n\n", SQNR);

    // Plot
    scf(k);
    clf();

    subplot(3,1,1);
    plot2d3(n, x);
    title("Original signal x[n], L = " + string(L));
    xlabel("n");
    ylabel("x[n]");

    subplot(3,1,2);
    plot2d3(n, xq);
    title("Quantized signal xq[n] - Rounding");
    xlabel("n");
    ylabel("xq[n]");

    subplot(3,1,3);
    plot2d3(n, e);
    title("Quantization error e[n]");
    xlabel("n");
    ylabel("e[n]");

end
