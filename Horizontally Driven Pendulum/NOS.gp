set terminal postscript color eps enhanced
set output 'NOS-vs-t.eps'
set size 1.0

#set xlabel "{/Symbol t" 
#set ylabel "N({/Symbol t})" 
set xlabel "t"
set ylabel "N(t)"
set key at 1.0,0.53
set grid
set ytics 0.05
set xtics 0.1

pl "./NOS-vs-t.dat" w lp lt -1 linewidth 2 pt 7 title "NOS vs hopping"
