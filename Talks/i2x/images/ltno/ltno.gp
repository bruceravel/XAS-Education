set term wx font 'Droid Sans,12' enhanced
set encoding iso_8859_15

set style data lines

set style line 1 lt 1 lc rgb "black" lw 1
set style line 2 lt 1 lc rgb "navy" lw 3

set size 1,1
set origin 0,0.01

set xrange [5450:5800]
set yrange [0.9:3.3]

set xlabel '{/=14 Energy (eV)}'
set ylabel '{/=14 Normalized Absorption}'

set title '{/=16 LaTiO_2N: La L_{III} edge}'

plot 'LaTiO2N_Brown.xmu' u 1:2 title "{{/Symbol g}MnO_2}" ls 1,\
     'white' u 1:2 title "white line" ls 2
