set terminal postscript color eps enhanced 

set xlabel "k"   font 'Helvetica,25'
set ylabel "{/Symbol E}"  font  'Helvetica,25'
set xrange[-pi:pi]
set border linewidth 3
set key box
set key spacing 1.0
set key at 2.0,1.9 font 'Helvetica,15'
set xtics ( "-{/Symbol p}" -pi,  "-{/Symbol p}/2" -pi/2,"0" 0,  "{/Symbol p}/2" pi/2,"{/Symbol p}" pi)   font  'Helvetica,25'
set ytics ( -2,-1, 0,1,2)  font  'Helvetica,25'
pl  "Ek-vs-k.dat" every:::0::0 w l  lt 1 lc rgb "red" linewidth 4 title "t=0.0"
repl  "Ek-vs-k.dat" every:::2::2 w l   lt 1   lc rgb "magenta"  linewidth 4 title "t=0.2" 
repl  "Ek-vs-k.dat" every:::3::3 w l   lt 1   lc rgb "black"  linewidth 4 title "t=0.3" 
repl  "Ek-vs-k.dat" every:::5::5 w l   lt 1 lc rgb "grey"  linewidth 4 title "t=0.5" 
repl  "Ek-vs-k.dat" every:::9::9 w l    lt 1 lc rgb "blue"  linewidth 4 title "t=0.9" 
repl  "Ek-vs-k.dat" every:::10::10 w l   lt 1  lc rgb "green" linewidth 4 title "t=1.0" 
set output 'Dispersionfinal.eps'
repl 0  w l linewidth 3 lt 1 lc rgb "black" title "{/Symbol E}={/Symbol E}_f" 
  
