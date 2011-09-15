set term wx font 'Droid Sans,12' enhanced
set encoding iso_8859_15

set style data lines

set style line 1 lt 1 lc rgb "black" lw 1
set style line 2 lt 1 lc rgb "red" lw 3
set style line 3 lt 1 lc rgb "purple" lw 3
set style line 4 lt 1 lc rgb "dark-green" lw 3

set size 1,1
set origin 0,0.01

set xrange [6500:6850]
set yrange [-0.02:1.5]

set xlabel '{/=14 Energy (eV)}'
set ylabel '{/=14 Normalized Absorption}'

set title '{/=16 Ramsdellite: Mn K edge}'

plot 'Ramsdellite.nor' u 1:2 title "{{/Symbol g}MnO_2}" ls 1,\
     'preedge'         u 1:2 title "pre-edge region"    ls 2,\
     'edge'            u 1:2 title "edge region"        ls 3,\
     'xanes'           u 1:2 title "near-edge region"   ls 4
