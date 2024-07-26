data=load('Strobo-threshold.dat');
data1=load('Strobo-threshold1.dat');
x=mod(data(:,2),2*pi);
y=data(:,3);
xx=mod(data1(:,2),2*pi);
yy=data1(:,3);
f1=figure(1);
plot(x,y,'.');
%axes([0 2*pi -10 10 ])
hold on ;
plot (xx,yy,'.');
axis([0 2*pi -10 10 ])
xlabel('$\phi_1$','interpreter','latex','Fontsize',40);
ylabel('$\phi_2$','interpreter','latex','Fontsize',40);
title('(b)','interpreter','latex','Fontsize',15);
axis tight
saveas(f1,'phasespace-threshold.jpg');
%print -depsc -painters   phasespace-threshold.eps

