clc;clear;tic;
k=1;e=0.3;r=1;q=5;p=0.05;

Pendulum=@(t,x) [x(2);-x(2)/(q*r)-sin(x(1))/(r*r)+e*cos(t)*sin(x(1))];

%set tolerances
options = odeset('RelTol',1e-6,'AbsTol',1e-6);

for i= 0.0:p*0.5:2*pi
     for j=-1:p*0.05:1
        [~,xx]=ode45(Pendulum,(0:(1000)*pi),[i,j],options);
        M=mean(xx(end-500:end,1));
        n=round(M/pi);        a=abs(M-n*pi);
        
        [t,yy]=ode45(Pendulum,(0:0.001:2.5*pi),[xx(end,1),xx(end,2)],options);
        
        pfinal=(yy(end,1)-xx(end,1));
        if((mod(n,2)==1)&&(abs(pfinal)<=2*pi))
            ang(k)=i;vel(k)=j;dev(k)=a;finang(k)=pfinal;
            
            plot(i,j,'.')
            axis([0 2*pi -1 1]);pbaspect([1 1 1])
            hold on
            k=k+1;
            p=0.0125;
        else
                p=0.05;
        end
    end
end
  
A=[ang;vel;dev;finang];
fileID=fopen('r1.txt','w');
fprintf(fileID,'%6s %12s %12s %12s\n','angle','vel','dev','finang');
fprintf(fileID,'%6.2f %12.8f %6.2f %12.8f\n',A);
fclose(fileID);
type basin.txt
toc;
