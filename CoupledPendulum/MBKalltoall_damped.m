% Writing down th equation for many body Kapitza pendula

function dy = MBKalltoall_damped(t,y,Lam,mm)
%% Setting the parameters
dy=zeros(2*mm,1);
e=0.3;r=11;q=5;
%% equations for the many body Kapitzapendula with all to all interaction
for i=1:mm
    dy(i)=y(mm+i);
end

for jj=1:mm
    for ii=1:mm
        dy(mm+ii)=-y(mm+ii)/(q*r)-sin(y(ii))/(r*r)+e*cos(t)*sin(y(ii))-Lam*sin(y(ii)-y(jj));
         %dy(mm+ii)=-sin(y(ii))/(r*r)+e*cos(t)*sin(y(ii))-Lam*sin(y(ii)-y(jj));
        
    end
end
end
