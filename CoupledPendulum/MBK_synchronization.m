tic 
clear; close all;clc;
nn=4;mm=nn/2;a=-0.1;b=0.1;Lam=.001; str=sprintf('longerLam%.3f.dat',Lam);
    pos=zeros(mm,1);    mom=zeros(mm,1);phi=zeros(mm,1);
for pp=1:mm
    pos(pp)=pi+unifrnd(a,b);mom(pp)=0.0;phi(pp)=unifrnd(10*a,10*b);
end
tin=0.0;tend=1300;time=[tin tend];%figure()
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,x]=ode45(@(t,x)MBKalltoall(t,x,Lam,mm,phi),time,[pos,mom],options);
pos=x(:,1:mm); mom=x(:,mm+1:nn);
%theta=pos(end-1500:end,:);
%thetadot=mom(end-1500:end,:);t=t(end-1500:end);
%M=[t,theta,thetadot];
M=[t,pos,mom];
save(str,'M','-ascii');
toc
