% Writing down th equation for many body Kapitza pendula

function dy = MBKalltoall(t,y,Lam,mm,phi)
%% Setting the parameters
dy=zeros(2*mm,1);
g0=1.0; g1=10; gam=5.0;

%% equations for the many body Kapitzapendula with all to all interaction
for i=1:mm
    dy(i)=Lam*y(mm+i);
end

for jj=1:mm
    for ii=1:mm
        dy(mm+ii)=-(g0+g1*cos(gam*t+phi(ii)))*sin(y(ii))/Lam-(Lam/mm)*(sin(y(ii)-y(jj)));
    end
end
end
