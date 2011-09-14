set term wxt font 'Droid Sans,14' enhanced

set xlabel 'energy (keV)'
set ylabel 'counts'
set title 'Uranium in Hanford sediment'
set key left
set style data lines
set xrange [:2000]

unset xtics
set xtics ("0" 0, "5" 500, "10" 1000, "15" 1500, "20" 2000)

set arrow 1 from 1310,0 to 1310,850 nohead
set arrow 2 from 1390,0 to 1390,850 nohead
set arrow 3 from 1310,850 to 1390,850 nohead
set label 1 'U L{/Symbol a} ROI' at 1420,791 font 'Droid Sans,12'

n=12
plot 'umicrotest_000.000' u n title 'E=17200 eV',\
     'umicrotest_001.000' u n lt 3 title 'E=17100 eV'