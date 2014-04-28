f = linspace(0, 7, 1000);
w = 2*pi*f;
singleLC = 4 * (sin(w./2).^2);
doubleLC = singleLC.^2;
singleLC = sqrt(abs(singleLC));
doubleLC = sqrt(abs(doubleLC));
singleLC = singleLC ./ (max(singleLC));
doubleLC = doubleLC ./ (max(doubleLC));
singleLC = 10*log10(singleLC + eps);
doubleLC = 10*log10(doubleLC + eps);

figure('Name','Delay Line Canceller');
plot(f,singleLC, f, doubleLC);
title('Delay Line Canceler');
% axis('tight');
xlabel('normalized frequency, f/f_r');
ylabel('amplitude response in dB');
hleg = legend('single DLC', 'double DLC', 'Location', 'NorthEastOutside');