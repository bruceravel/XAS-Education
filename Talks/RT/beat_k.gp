set term wx font 'Droid Sans,12' enhanced
#set term postscript landscape enhanced color
#set out 'figure5.ps'
set encoding iso_8859_15
#set style data lines

set xlabel '{/=16 Wavenumber ({\305}^{-1})}' offset 0,0
set ylabel '{/=16 k*{/Symbol c}(k) ({\305}^{-1})}' offset 0,0

set yrange [-2:6]

plot 'beat_k.dat' using 1:2 with lines ls 1 title '{/Symbol w}=5',\
     'beat_k.dat' using 1:3 with lines ls 2 title '{/Symbol w}=6',\
     'beat_k.dat' using 1:($4+3) with lines ls 3 title 'sum'