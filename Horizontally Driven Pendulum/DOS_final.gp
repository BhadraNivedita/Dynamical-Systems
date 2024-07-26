set terminal postscript color eps enhanced font 'Helvetica ,30'
#set output 'DOS-energyFinal.eps'
#set size 0.5
set xrange[-2.5:2.5]
set xlabel "{/Symbol e}"  font 'Helvetica,40'
set ylabel "D({/Symbol e})"    font 'Helvetica,40'
set key at 0.0,5.8
set key box font 'Helvetica,20'
set border linewidth 1.5 
pl  "./DOS-vs-E.dat" every:::0::0 w l  lt 1 linewidth 4 lc rgb "red" title "t=0.0"
#pl "./DOS-vs-E.dat" every:::1::1 w l linewidth 1 title "t=0.1" 
#pl  "./DOS-vs-E.dat" every:::2::2 w l linewidth 1 title "t=0.2" 
repl "./DOS-vs-E.dat" every:::3::3 w l  lt 1  linewidth 4 lc rgb "blue" title "t=0.3" 
#pl  "./DOS-vs-E.dat" every:::4::4 w l linewidth 1 title "t=0.4" 
repl  "./DOS-vs-E.dat" every:::5::5 w l  lt 1  linewidth 4 lc rgb "green" title "t=0.5" 
#repl  "./DOS-vs-E.dat" every:::6::6 w l linewidth 1 title "t=0.6" 
#pl  "./DOS-vs-E.dat" every:::7::7 w l linewidth 1 title "t=0.7" 
#pl  "./DOS-vs-E.dat"every:::8::8 w l linewidth 1 title "t=0.8" 
repl "./DOS-vs-E.dat" every:::9::9 w l  lt 1  linewidth 4 lc rgb "magenta" title "t=0.9" 
set output 'DOS-energyFinal.eps'
repl "./DOS-vs-E.dat" every:::10::10 w l  lt 1 linewidth 4 lc rgb "cyan" title "t=1.0" 

