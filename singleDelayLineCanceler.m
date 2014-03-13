f = linspace(0, 10, 1000);
w = 2*pi*f;
as = 4 * (sin(w./2).^2);
logas = 10*log10(as);
figure(100);
plot(f,as);
figure(200);
axis("tight");
plot(f,logas);