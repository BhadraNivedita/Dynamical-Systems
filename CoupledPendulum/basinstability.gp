 set term postscript eps color enhanced

set xlabel 'q' font 'Times-Roman,25'
set ylabel 'basinstsbaility' font 'Times-Roman,25'
unset key
set output 'basinstability.eps'
pl 'basinstability.txt' u 1:2 w lp pt 4 dt 4 lc 'blue' lw 3
