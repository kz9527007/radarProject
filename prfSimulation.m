close all; clear all;
cd ~/radarProject/
f = 1008;
t = 0:.001:1;
sig = 2+sin(2*pi*f.*t);
figure('Name', 'Input Signal');
clf;
plot(t, sig);
title('Input signal');
xlabel('time in seconds');
ylabel('amplitude');


h1 = zeros(1,1024);
for k = (63+1):1000
    h1(k) = sig(k) - sig(k-63);
end

h2 = zeros(1,1024);
for k = (64+1):1000
    h2(k) = sig(k) - sig(k-64);
end

h = h1 + h2;
g = zeros(1,1024);
for k = 1:length(sig)
    g(k) = sig(k);
end

fs = 1/.001
H = abs(fft(h, 1024));
G = abs(fft(g, 1024));
len = length(H);
w = (0:len-1)*fs;
w = w./len;
figure('Name', 'frequency spectrum');
clf;
subplot(2,1,1);
plot(w,H);
axis tight;
title('filtered frequency spectrum');
xlabel('Frequency, Hz');
ylabel('Amplitude');
subplot(2,1,2);
plot(w,G);
axis tight;
title('unfiltered frequency spectrum');
xlabel('Frequency, Hz');
ylabel('Amplitude');

f1 = 1/(.001*63)
fdip = f1*63.5

%% here in this problem T1 = 63 and T2=64 or in seconds T1 = 0.001*63 and
%% T2 = .001* 64 here f1 was chosen to be 1/T1. T1 is the independent variable 
%% and not f1.
