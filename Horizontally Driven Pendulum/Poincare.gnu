set term png
set output 'Poincare-above.png'
unset key
set xlabel 'Theta'
set ylabel 'Thetadot'

pl 'Poincare.dat' u 3:4 w d
