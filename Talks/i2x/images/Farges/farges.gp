set term wx font 'Droid Sans,12' enhanced
set encoding iso_8859_15

set xlabel '{/=14 Peak position (eV)}'
set ylabel '{/=14 Normalized peak height}'

unset title '{/=16 Ti pre-edge peak and coordination}'

set yrange [:1.2]

plot 'farges.4' u 1:2 title "4-fold" w points pt 12 ps 2 linecolor rgb "blue",\
     'farges.5' u 1:2 title "5-fold" w points pt 8 ps 2 linecolor rgb "red",\
     'farges.6' u 1:2 title "6-fold" w points pt 6 ps 2 linecolor rgb "dark-green",\
     'zirc'     u 1:2 title "Zirconolite samples" w points pt 7 ps 2 linecolor rgb "purple"