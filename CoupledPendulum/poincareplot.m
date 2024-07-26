
clear;close;clc;

data1=load('longerLam0.001.dat');%data1=data1(500:20000,:);
data2=load('longerLam0.100.dat');%data2=data2(500:20000,:);
data3=load('longerLam0.500.dat');%data3=data3(500:20000,:);
data4=load('longerLam1.000.dat');%data4=data4(500:20000,:);

figure()
fsize=18;
subplot(2,2,1)

plot(data1(:,1),data1(:,2))
hold on 
plot(data1(:,1),data1(:,3))
title('$\Lambda = 0.001$','FontSize',fsize,'Interpreter','latex')
xlabel('time','FontSize',fsize,'Interpreter','latex')
ylabel('$\phi$','FontSize',fsize,'Interpreter','latex')
set(gca,'Linewidth',1.2)
axis([500 1000 2.85 3.4])

subplot(2,2,2)
plot(data2(:,1),data2(:,2))
hold on 
plot(data2(:,1),data2(:,3))
title('$\Lambda = 0.1$','FontSize',fsize,'Interpreter','latex')
xlabel('time','FontSize',fsize,'Interpreter','latex')
ylabel('$\phi$','FontSize',fsize,'Interpreter','latex')
set(gca,'Linewidth',1.2)
axis([500 1000 2.9 3.4])


subplot(2,2,3)
plot(data3(:,1),data3(:,2))
hold on 
plot(data3(:,1),data3(:,3))
title('$\Lambda = 0.5$','FontSize',fsize,'Interpreter','latex')
xlabel('time','FontSize',fsize,'Interpreter','latex')
ylabel('$\phi$','FontSize',fsize,'Interpreter','latex')
set(gca,'Linewidth',1.2)
axis([500 1000 2 4.2])

subplot(2,2,4)

plot(data4(:,1),data4(:,2))
hold on 
plot(data4(:,1),data4(:,3))
title('$\Lambda = 1$','FontSize',fsize,'Interpreter','latex')
xlabel('time','FontSize',fsize,'Interpreter','latex')
ylabel('$\phi$','FontSize',fsize,'Interpreter','latex')
set(gca,'Linewidth',1.2)
axis([500 1000 2.6 3.8])

print -painters -depsc timeseries.eps