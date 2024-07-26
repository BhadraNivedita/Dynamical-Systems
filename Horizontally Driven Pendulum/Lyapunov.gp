set terminal postscript color eps enhanced
pl 'Lyapunov-threshold.dat' u 4 w l title "Liyapunov exponent1"
set output 'Lyapunovexponent.eps'
repl 'Lyapunov-threshold.dat' u 5 w l   title "Liyapunov exponent2"

