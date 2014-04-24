close all; clear all;
cd ~/radarProject/
f = 60;
t = linspace(0,2,2000);
sig = sin(2*pi*f.*t);
figure('Name', 'Input Signal');
clf;
plot(t, sig);
title('Input signal');
xlabel('time in seconds');
ylabel('amplitude');