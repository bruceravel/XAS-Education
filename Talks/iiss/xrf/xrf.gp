set term wxt font 'Droid Sans,14' enhanced

set xlabel 'energy (keV)'
set ylabel 'counts'
set title 'Uranium in Hanford sediment'
set key left
set style data lines
set xrange [:2000]

unset xtics
set xtics ("0" 0, "5" 500, "10" 1000, "15" 1500, "20" 2000)

set label 1 'U L{/Symbol a}' at 1210,791 font 'Droid Sans,12'
set label 2 'Sr K{/Symbol a}' at 1390,320 font 'Droid Sans,10'
set arrow 2 from 1414,140 to 1414,300 nohead
set label 3 'As K{/Symbol a}' at 980,120 font 'Droid Sans,10'
set arrow 3 from 1056,50 to 1056,100 nohead
set label 4 'Zn K{/Symbol a}' at 830,170 font 'Droid Sans,10'
set arrow 4 from 862,50 to 862,150 nohead
set label 5 'Cu K{/Symbol a}' at 770,220 font 'Droid Sans,10'
set arrow 5 from 807,50 to 807,200 nohead
set label 6 'Fe K{/Symbol a} + Compton escape' at 450,320 font 'Droid Sans,10'
set arrow 6 from 640,250 to 640,300 nohead
set label 7 'Rb K{/Symbol a}' at 1100,320 font 'Droid Sans,10'
set arrow 7 from 1320,115 to 1215,300 nohead
set label 8 'Compton and elastic' at 1500,660 font 'Droid Sans,10'
set label 9 'U L{_{III}} edge energy = 17166 eV' at 200,600 font 'Droid Sans,12'
set label 10 'Y K{/Symbol a}' at 1440,220 font 'Droid Sans,10'
set arrow 10 from 1490,130 to 1490,200 nohead
set label 11 'U L{_l}' at 1130,190 font 'Droid Sans,10'
set arrow 11 from 1160,50 to 1160,170 nohead
set label 12 'More escape peaks' at 150,185 font 'Droid Sans,10'


n=12
plot 'umicrotest_000.000' u n title 'E=17200 eV',\
     'umicrotest_001.000' u n lt 3 title 'E=17100 eV'