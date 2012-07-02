set term wx font 'Droid Sans,12' enhanced
#set term postscript landscape enhanced color
#set out 'figure5.ps'
set encoding iso_8859_15
#set style data lines

set xlabel '{/=16 Distance ({\305})}' offset 0,0
set ylabel '{/=16 {/Symbol c}(R) ({\305}^{-2})}' offset 0,0

set xrange [0:6]
set yrange [0:8]

plot 'beat_r.dat' using 1:2 with lines ls 1 title '{/Symbol w}=5',\
     'beat_r.dat' using 1:3 with lines ls 2 title '{/Symbol w}=6',\
     'beat_r.dat' using 1:($4+3) with lines ls 3 title 'sum'