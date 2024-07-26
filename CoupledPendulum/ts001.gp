set term postscript eps color enhanced
set output 'longer.eps'
set tic font 'Times Roman,20'
set size 1,1
set origin 0,0
set multiplot layout 2,2 columnsfirst scale 1,1
unset key 
set rmargin 5
set lmargin 10
set bmargin 4
set xlabel 't' font "Time Roman,30"
set ylabel '{/Symbol f}' font "Time Roman,30"
set title '{/Symbol L=.001}'
pl for[i=2:3] 'longerLam0.001.dat' u 1:i w l
set title '{/Symbol L=.1}'
pl for[i=2:3] 'longerLam0.100.dat' u 1:i w l

set title '{/Symbol L=0.5}'
pl for[i=2:3] 'longerLam0.500.dat' u 1:i w l

set title '{/Symbol L=1}'
pl for[i=2:3] 'longerLam1.000.dat' u 1:i w l

