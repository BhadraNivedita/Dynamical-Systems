

function ydot=logistic(t, y)

       %     right hand side of logistic equation for a matlab numerical
       %     solution.

       %     r is the intrinsic growth rate
       %     K is the carrying capacity
       
       r = 0.5;
       
       K = 40;
       
       ydot = r*y*(1-y/K);
