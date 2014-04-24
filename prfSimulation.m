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


h1 = zeros(1024);
for k = (63+1):1000
    h1(k) = sig(k) - sig(k-63);
end

h2 = zeros(1024);
for k = (64+1):1000
    h2(k) = sig(k) - sig(k-64);
end

h = h1 + h2;
H = abs(fft(h, 1024));
figure('Name', 'frequency spectrum');
clf;
plot(H);
axis tight;

f1 = 1/(.001*63)
fdip = f1*63.5