
        #Gnuplot file to plot effective potential of Josephson junction without noise


        set terminal postscript color eps enhanced "Helvetica" 20
        set key at 4,-1
        set key box lw 2
        set xlabel "Phase fluctuation({/Symbol f})"  offset 0,-1.,0 font "Helvetica,30"; 
        set ylabel  "Effective potential(V)" offset -2,0,0  font "Helvetica,30";
        set xrange[0:2*pi];
        set tics font ", 30"
        set border linewidth 2
        set xtics ("0" 0 ,"{/Symbol p/2}" pi/2,"{/Symbol p}" pi,"3{/Symbol p/2}" 3*pi/2, "{/Symbol 2p}" 2*pi) 

        #Parameter values
        a1=1;   b1=0.25;
        a2=1;   b2=0.50;
        a3=1;   b3=1.00;
    
        #Plotting functions
            pl      -a1*cos(x)-0.5*b1*cos(2*x)           dashtype 2         lw 4    lc rgb "blue"           title "f_1>2f_2"
            repl    -a2*cos(x)-0.5*b2*cos(2*x)           dashtype 1         lw 4    lc rgb "black"          title "f_1=2f_2"

        set output 'veffwithoutnoise.eps'
            
            repl    -a3*cos(x)-0.5*b3*cos(2*x)           dashtype 4         lw 4    lc rgb "red"            title "f_1<2f_2"








 












