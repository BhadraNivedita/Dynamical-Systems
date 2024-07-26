% code to generate colored noise by white noise in an oscillator
clear all; close all;clc;
  
tic

  T=500;                % maximum time
  
  N=T*1000;             % number of steps to take

  h=T/N;             % time step
  
  hh=0.01;beta=0.3;
  
  mu=3.0; Omega=10;f2=3.5; f1=8;
  
  fileID=fopen('PSDdata.dat','w');
   
  
 
 for ii=1:10
        
     
      t=(0.0:h:T);          % t is the vector [0 1h 2h 3h ... Nh]
        % strength of the noise
     
  X=zeros(size(t));   % prepare place to store locations
  
  Y=zeros(size(t));
  
  U=zeros(size(t));
  
  V=zeros(size(t));
       
     X(1)=1.0; Y(1)=.50;            % initial height
  
     U(1)=pi-0.001; V(1)=0.0;
     
    sig2=12;
  
  %simulationg oscillator eqn using euler algorithm
  for i=1:N         % take N steps
      
    a=0;
    b=10;
    
    noise=((b-a).*randn(1,1)+a)*7.0 ;
      
    U(i+1)=U(i)+V(i)*h;
    
    V(i+1)=V(i)-2*beta*V(i)*hh-(f1*sin(U(i))+f2*sin(2*U(i)))*(h+sig2*X(i)*h);
      
    X(i+1)=X(i)+Y(i)*hh;% theta eqtn
    
    Y(i+1)=Y(i)-mu*Y(i)*hh-Omega*Omega*X(i)*hh+noise*sqrt(hh);%thetadoteqn
        
    
  end;
   
  figure(1)
  
   plot(U)
   
       for ii=1:10
     
             varxi(ii)=var(X);
   
        end

   
   for jj=1:N
  
     fprintf(fileID,'%f\t%f\t%f\t%f\t%f\n',t(jj),U(jj),V(jj),X(jj),Y(jj));
        
 end
   
   fprintf(fileID,'\n');
   
 end
 
  hold on 
 
averagevariance=mean(varxi)

  fclose(fileID);% close the file
  
  toc
