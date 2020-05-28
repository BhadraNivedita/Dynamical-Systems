set terminal postscript color eps enhanced 'Helvetica,20'
set xrange[-pi:pi]
set output 'potentialwhenalpha0.eps'
set xlabel "{/Symbol f}" font "Helvetica,30"
set ylabel "V({/Symbol f)"  font "Helvetica,30"
set key box
set key at  .750 ,6.5
set xtics ( "-{/Symbol p}" -pi,  "-{/Symbol p}/2" -pi/2,"0" 0,  "{/Symbol p}/2" pi/2,"{/Symbol p}" pi)
set border linewidth 4

pl (-x1*cos(0)-x2*cos(2*0))  w l 




