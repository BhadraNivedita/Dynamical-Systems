% code to generate colored noise by white noise in an oscillator

clear all; close all;clc;
  
tic

  T=500;                % maximum time
  N=T*1000;             % number of steps to take

  Omega=10;f2=.5; f1=2;
  h=T/N;            
  hh=0.01;
  beta=0.8;
  mu=2.0;
  
  fileID=fopen('timeseries_noiseless.dat','w');
   for ii=1:20
   
     
      t=(0.0:h:T); 
      
  X=zeros(size(t));   % prepare place to store locations
  Y=zeros(size(t));
  U=zeros(size(t));
  V=zeros(size(t));
       
     X(1)=0.01; Y(1)=0.01;            % initial height
     U(1)=pi+0.001; V(1)=0.0;
     
    sig2=0;
  
  %simulationg oscillator eqn using euler algorithm
  for i=1:N         % take N steps
      
    a=0;  
    b=10;
    noise=((b-a).*randn(1,1)+a)*10;
    
    %nn=0.0010*noise;
    nn=0.0;
    U(i+1)=U(i)+V(i)*h;
    V(i+1)=V(i)-2*beta*V(i)*h+nn-(f1*sin(U(i))+f2*sin(2*U(i)))*(1+sig2*X(i))*h;
    X(i+1)=X(i)+Y(i)*hh;
    Y(i+1)=Y(i)-mu*Y(i)*hh-Omega*Omega*X(i)*hh+noise*sqrt(hh);%thetadoteqn
  
  end;  
  
  
  %figure(); 
  
  %U=mod(abs(U),2*pi); 
  mean(U)
  
  % plot(U);
     
  % hold on 
  
  for jj=1:N
  
     fprintf(fileID,'%f\t%f\t%f\t%f\t%f\n',t(jj),U(jj),V(jj),X(jj),Y(jj));
        
  end
  
  fprintf(fileID,'\n');
   
   
   end
   
  fclose(fileID);% close the file
  toc
