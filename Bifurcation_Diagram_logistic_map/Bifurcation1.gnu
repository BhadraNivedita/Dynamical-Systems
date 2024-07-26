# Gnuplot script file for plotting data in file "BifurcationDiagram.dat"
set autoscale
unset key
unset log
unset label
set xtic auto
set ytic auto
set terminal jpeg
set output 'BifurcationDiagram.jpg'
set title "phase portrait"
set xlabel "Angle(theta)"
set ylabel "Angular velocity(theta dot)"

plot for[i=0:999] 'BifurcationDiagram.dat' every:::i::i  u 2:3 w p pt 7 ps .26
#plot for[i=0:9] 'BifurcationDiagram.dat' every:::i::i  u 2:3 w d
