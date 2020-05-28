set term postscript eps color enhanced

set output 'noisyphi_additive.eps'
unset key 
#set font Times Roman
set multiplot
#set xrange[200000:500000]
set yrange[-2:3*pi+1]
set xlabel "time(t)" font "Times Roman,30" offset   0,-1.5,0
set ylabel  "phase angle ({/Symbol f})" font "Times Roman,30"  offset   -1,0,0
set tic font ",25"
set xtics border offset   0,-0.5,0
set ytics border offset   -0.5,0.0,0

set bmargin 6
set tmargin 1
set lmargin 9
set rmargin 4
pl 'averagedata_noisy_additive.dat' u 1:2 w l lc "blue"

set origin .58, .62
set size .35,.35
clear
unset key
unset grid
unset object
unset arrow
set xtics .5
set ytics .5
set xrange[0:1.5]
set yrange[-1:1]
set xtics border offset   0,-0.5,0
set ytics border offset   -0.5,0.0,0
set tic font ",20"
set xlabel "{/Symbol t}" font "Times Roman,20"  offset   0,0,0
set ylabel "<{/Symbol x}(t){/Symbol x}(t')>" font "Times Roman,20"  offset   0,0,0
set bmargin 2
set tmargin 1
set lmargin 3
set rmargin 1
plot 'correlation.dat' u 1:2 w l lc "blue" lw 4
unset multiplot