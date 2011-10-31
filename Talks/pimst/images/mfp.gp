set term wxt 1 font 'Droid Sans,11' enhanced title "Athena[Plot.1]"
set encoding iso_8859_15
set origin 0.01,0.01
set size 0.99,0.99
set autoscale
unset logscale

## line styles
w=1.5
set style line 1  linecolor rgb "blue" linewidth w pointsize 1 pointtype 7
set style line 2  linecolor rgb "red" linewidth w pointsize 1
## marker styles
set style line 12 linecolor rgb "#008b8b"

## indicator styles
set style line 16 linecolor rgb "#D02090" lw 1.5
unset arrow
unset label

## plot formatting
set style line 20 linecolor rgb "#cccccc"
set grid ls 20
set key top left width 1 height 1 box

set xlabel "{/*1.2 Wavenumber&{aa}({\305}^{-1})}"
set ylabel "{/*1.2 mean free path&{aa}({\305})}"

set arrow 1 from 2.266,25 to 2.266,15 ls 16
set label 1 'plasmon' at 1.3,27

set yrange [0:]

plot 'feff0001.dat' using 1:6 with lines ls 1 title '{/Symbol l}(E)'
