
%code to simulate two coupled Kapitza pendulum
tic clear; close all;clc;
nn=4;mm=nn/2;a=-0.1;b=0.1;Lam=1; str=sprintf('L%.3f.dat',Lam);
    pos=zeros(mm,1);    mom=zeros(mm,1);phi=zeros(mm,1);
pos(1)=pi+0.05;pos(2)=pi-0.05;mom(1)=0.0;mom(2)=0.0;
tin=0.0;tend=1000;time=tin:(2*pi/5)*0.001:tend;
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,x]=ode45(@(t,x)MBKalltoall_damped(t,x,Lam,mm),time,[pos,mom],options);
pos=x(:,1:mm); mom=x(:,mm+1:nn); l=length(t);
fileID=fopen('datadamped.dat','w');
for ii=1:l
    if mod(ii,1000)==0
        fprintf(fileID,'%d\t%f\t%f\t%f\t%f\n',ii,pos(ii,1),pos(ii,2),mom(ii,1),mom(ii,2));
    end
end
fclose(fileID);toc
