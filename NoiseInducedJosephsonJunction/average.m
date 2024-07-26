
% Code to show average phi,phidot,correlation etc

clear all;

close all;

clc;

tic

data=load('timeseries_noiseless.dat');

time=data(:,1);

xx=data(:,2);
%vv=data(:,3);
xi=data(:,4);
%correl=data(:,6);


fileID=fopen('averagedata_noiseless.dat','w');
fileID1=fopen('correlation_noiseless.dat','w');

N=500000;block=20;
time=time(1:N);

sum=zeros(N,1);%sumvel=zeros(N,1);sumxi=zeros(N,1);
sumcorrel=zeros(N,1);

for  ii=1:N %iteration
    
    for jj=1:block %block
        
   
        sum(ii)=sum(ii)+xx(N*(jj-1)+ii);
        %sumvel(ii)=sumvel(ii)+vv(N*(jj-1)+ii);
        %sumxi(ii)=sumxi(ii)+xi(N*(jj-1)+ii);
        %sumcorrel(ii)=sumcorrel(ii)+correl(N*(jj-1)+ii);
        
    end 
end

phiav=sum/block;
%phidotav=sumvel/block;
%noiseav=sumxi/block;
%correlav=sumcorrel/block;

A=[time';phiav'];
%for jj=1:N

%fprintf(fileID,'%f\t%f\t%f\t%f\n',phiav(jj),phidotav(jj),noiseav(jj),correlav(jj));
fprintf(fileID,'%f\t%f\n',A);

%end

figure(1)

%subplot(2,1,1)
%handaxes1 = axes('position', [0.2 0.2 0.8 0.8]);

%plot(time,phiav);
%set(gca,'YTick',[3.140:0.0010:3.1455]);
%set(gca,'XTick',[0:100:500],'fontsize', 18);
%axis([200 505  -pi 2*pi+2])
%set(handaxes1, 'box', 'on');


%plot(phiav(38000:end),phidotav(38000:end),'Linewidth',2)
%figure(2)
%plot(correlav);

%subplot(2,1,2)
%figure(3)
%plot(noiseav)
%plot(correlav(35000:40000),'Linewidth',2)
%axis([0 5000 -0.08 0.08])
%axis([0 5000  0 2*pi])

%xlabel('time','Interpreter','LaTex','Fontsize',20)
%ylabel('$\phi$','Interpreter','LaTex','Fontsize',20)
%axis tight
xi=xi(1:500000);
autocorrelation=autocorr(xi,1500);
[ACF, lags] = autocorr(xi, 1500);


%handaxes2 = axes('position', [0.25 0.25 0.3 0.3]);

%subplot(2,1,2)
%plot(0.001.*lags,ACF,'Linewidth',2)
B=[0.001.*lags' ; ACF'];
fprintf(fileID1,'%f\t%f\n',B);

%set(handaxes2, 'box', 'on');
%axis tight
%xlabel('$\tau$','Interpreter','LaTex','Fontsize',20)
%ylabel('$\langle \xi(t)\xi(t+\tau) \rangle$','Interpreter','LaTex','Fontsize',15)
toc
%print -depsc -painters noisyPhi_additive.eps

fclose(fileID);fclose(fileID1);
