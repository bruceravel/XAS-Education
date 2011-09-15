set term wx font 'Droid Sans,12' enhanced
set encoding iso_8859_15

set style line 1 lt 1 lc rgb "blue" lw 4
set style line 2 lt 1 lc rgb "red" lw 4

set xlabel '{/=14 Year of publication}'
set xrange [1978:2012]
set ylabel '{/=14 Number of publications}'
set yrange [-10:1100]


plot 'xanes_publications' u 1:2 title "" w impulses ls 1,\
     '2010' u 1:2 title "" w impulses ls 2