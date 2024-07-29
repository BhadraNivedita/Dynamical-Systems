 

tspan=[0 100];

y0=1;

[t,y] = ode45('logistic', tspan, y0);

plot(t,y,'linewidth', 2, 'color', 'red', 'marker', 'none')


xlabel('$\tau$','interpreter','latex','Fontsize',14);

ylabel('Population Density');

print -depsc Populationdensity.eps