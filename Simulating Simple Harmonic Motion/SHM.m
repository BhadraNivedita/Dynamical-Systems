%
% Simple harmonic motion - comparison of Euler, Euler Cromer
% and 2nd order Runge Kutta and built in MATLAB Runge Kutta
% function ODE45to solve ODEs.
% by Kevin Berwick,
% based on 'Computational Physics' book by N Giordano and H Nakanishi,
% section 3.1
% Equation is d2y/dt2 = -y
% Calculate the numerical solution using Euler method in red

% Calculate the numerical solution using Second order Runge-Kutta method in green
[time,y] = SHM_Runge_Kutta (10);
%subplot(2,2,3);
plot(time,y,'b' );
axis([0 100 -20 20]);
xlabel('Time');
ylabel('Displacement');
legend ('Runge-Kutta method');
% Use the built in MATLAB ODE45 solver to solve the ODE
% The function describing the SHM equations is called my_shm
% The time values range from 0 to 100
% The initial velocity is 0, the initial displacement is 10
%[t,y]=ode23(@SHM_ODE45_function,[0,100],[0,10]);
% We need to plot the second column of the y matrix, containing the
% displacement against time in black
%subplot(2,2,4);
%plot(t,y(:,2),'k');
%axis([0 100 -20 20]);
%xlabel('Time');
%ylabel('Displacement');
%legend ('ODE45 Solver');



