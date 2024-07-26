data=load('Strobo-threshold.dat');
%data1=load('Strobo-threshold1.dat');
x=mod(data(:,2),2*pi);
y=data(:,3);
%xx=mod(data1(:,2),2*pi);
%yy=data1(:,3);
f1=figure(1);
plot(x,y,'.');
%yaxis(-10:10)
%hold on ;
%plot (xx,yy,'.');
xlabel('$\phi$','interpreter','latex','Fontsize',14);
ylabel('$\dot{\phi}$','interpreter','latex','Fontsize',14);
title('(b)','interpreter','latex','Fontsize',10);

axis tight
saveas(f1,'hyperbolictoelliptic.jpg');
