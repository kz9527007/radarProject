cd ~/radarProject/

f = linspace(0,1, 1000);
clf;
figure(100);
plot(f,dlFeedback(0.25,f),'-', f, dlFeedback(0.7, f), '--', f, dlFeedback(0.9, f), ':');
hleg = legend('K = 0.25', 'K = 0.7', 'K = 0.9');
xlabel('Normalized frequency, f/f_r');
ylabel('Amplitude response');
axis tight;
title('Delay Lines with Feedback');