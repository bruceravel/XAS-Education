set term wx font 'Droid Sans,12' enhanced
#set term postscript landscape enhanced color
#set out 'figure5.ps'
set encoding iso_8859_15
#set style data lines

set xlabel '{/=14 Wavenumber ({\305}^{-1})}' offset 0,0
set ylabel '{/=14 F(k)}' offset 0,0
set title  '{/=16 F(k) for Au first shell}'

#set yrange [-2:6]

plot 'aufirst.dat' using 1:3 with lines ls 1 title 'F(k)'
