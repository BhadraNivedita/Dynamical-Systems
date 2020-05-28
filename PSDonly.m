% code  to check power spectrum of generated periodically modulated coloured noise

clear all;
close all;
clc;

data=load('PSDdata.dat');
x=data(:,4);
%y=hist(x,100);
x=x(1:500000);

Fs=100;
t = 0:1/Fs:1-1/Fs;

N = length(x);

xdft = fft(x);

xdft = xdft(1:N/2+1);

psdx = (1/(Fs*N)) * abs(xdft).^2;

psdx(2:end-1) = 2*psdx(2:end-1);

freq = 0:Fs/length(x):Fs/2;

%subplot(2,2,1)

plot(2*pi*freq,10*log10(psdx));

grid on
%title('Periodogram Using FFT');
xlabel('$\nu$','Interpreter','LaTex','Fontsize',25);
ylabel('$10\log$(power spectral density)','Interpreter','LaTex','Fontsize',25)
axis([0 50 -100 50]);

print -depsc -painters   PSD.eps