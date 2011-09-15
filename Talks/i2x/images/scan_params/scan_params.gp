set term wx font 'Droid Sans,12' enhanced
set encoding iso_8859_15

set style data lines

set style line 1 lt 1 lc rgb "red" lw 3
set style line 2 lt 1 lc rgb "dark-green" lw 3
set style line 3 lt 1 lc rgb "blue" lw 3
#set style line 3 lt 1 lc rgb "purple" lw 3

set xrange [:5450]
set yrange [-0.1:1.4]

set xlabel '{/=14 Energy (eV)}'
set ylabel '{/=14 Normalized Absorption}'

set title '{/=16 LaTiO_2N: Ti K edge}'

plot 'pre'   u 1:2 title "pre-edge" ls 1,\
     'edge'  u 1:2 title "edge"     ls 2,\
     'exafs' u 1:2 title "EXAFS"    ls 3
