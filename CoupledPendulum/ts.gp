set term postscript eps color enhanced
set output 't.eps'
set tic font 'Times Roman,10'
set size 1,1
set origin 0,0
set multiplot layout 2,2 columnsfirst scale 1,1
unset key 
set xrange[0:500]
set rmargin 5
set lmargin 10
set bmargin 4

set xlabel 't' font "Time Roman,30"
set ylabel '{/Symbol f}' font "Time Roman,30"

set title '{/Symbol L = 0.001}'
pl 'Lam0.001.dat' u 1:2 w l,'Lam0.001.dat' u 1:3 w l

set title '{/Symbol L = 0.1}'
pl  'Lam0.100.dat' u 1:2 w l, 'Lam0.100.dat' u 1:3 w l

set title '{/Symbol L = 0.5}'
pl 'Lam0.500.dat' u 1:2 w l, 'Lam0.500.dat' u 1:3 w l

set title '{/Symbol L = 1}'
pl 'Lam1.000.dat' u 1:2 w l, 'Lam1.000.dat' u 1:3 w l

