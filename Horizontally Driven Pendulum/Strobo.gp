set terminal postscript color eps enhanced
#set term jpeg
unset key
set output 'phase-space-above.eps'
#pl 'Lyapunov.dat'  u ($2+pi - (floor(($2+pi)/(2*pi))*(2*pi) )):3 w d
pl 'Phase-space-threshold.dat'  u 2:3
