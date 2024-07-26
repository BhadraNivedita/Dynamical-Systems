
#set terminal epslatex color
set terminal postscript color eps enhanced "Helvetica" 20
set key at 4,-6
set key box lw 2
#set key borderwidth 4
set xlabel "Phase fluctuation({/Symbol f})"  offset 0,-1.,0 font "Helvetica,30"; 
set ylabel  "Effective potential(V)" offset -2,0,0  font "Helvetica,30";
set xrange[0:2*pi];
set tics font ", 30"

set border linewidth 2

 set xtics ("0" 0 ,"{/Symbol p/2}" pi/2,"{/Symbol p}" pi,"3{/Symbol p/2}" 3*pi/2, "{/Symbol 2p}" 2*pi)

set ytics ("-8" -8,"-4" -4 ,"0" 0,"4" 4)

f1=5; f2=1.5;

sigma1=0;
sigma2=0.1;
sigma3=0.5;
sigma4=1.0




pl (-sigma1*f1**2*cos(2*x)-f2*(2*cos(2*x)*sqrt(f1-2*f2)+sigma1*cos(4*x)*f2)-4*cos(x)*f1*(sqrt(f1-2*f2)-2*sigma1*sin(x)**2*f2))/(4*sqrt(f1-2*f2))    dashtype 2         lw 4    lc rgb "blue" title "{/Symbol D}=0.0"

#repl (-sigma2*f1**2*cos(2*x)-f2*(2*cos(2*x)*sqrt(f1-2*f2)+sigma2*cos(4*x)*f2)-4*cos(x)*f1*(sqrt(f1-2*f2)-2*sigma2*sin(x)**2*f2))/(4*sqrt(f1-2*f2))  w lp  lt 1  linewidth 4  title "{/Symbol D}=0.1"


repl (-sigma3*f1**2*cos(2*x)-f2*(2*cos(2*x)*sqrt(f1-2*f2)+sigma3*cos(4*x)*f2)-4*cos(x)*f1*(sqrt(f1-2*f2)-2*sigma3*sin(x)**2*f2))/(4*sqrt(f1-2*f2))   dashtype 1         lw 4    lc rgb "black" title "{/Symbol D}=0.5"

set output 'veff.eps'


repl (-sigma4*f1**2*cos(2*x)-f2*(2*cos(2*x)*sqrt(f1-2*f2)+sigma4*cos(4*x)*f2)-4*cos(x)*f1*(sqrt(f1-2*f2)-2*sigma4*sin(x)**2*f2))/(4*sqrt(f1-2*f2))   dashtype 4         lw 4    lc rgb "red" title "{/Symbol D}=1.0"








 












