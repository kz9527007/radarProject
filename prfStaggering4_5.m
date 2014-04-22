clear all; close all;
fofr    = 0:0.001:1;
f1  = 4 * fofr;
f2  = 5 * fofr;
resp1   = abs(sin(pi .* f1));
resp2   = abs(sin(pi .* f2));
resp    = resp1 + resp2;
respmax = max(resp);
resp    = resp./respmax;

figure('Name', 'PRF Staggering 4/5');
clf;
plot(fofr, resp1, fofr, resp2, fofr, resp);
title('PRF Staggering 4/5');
xlabel('Normalized frequency f/f_r');
ylabel('Normalized filter responses');
hleg = legend('T1 = 4', 'T2 = 5', 'T1/T2 = 4/5', 'Location', 'NorthEastOutside');