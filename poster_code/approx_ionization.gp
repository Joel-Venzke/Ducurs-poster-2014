set term pslatex color 
set out 'approx_ionization.tex'
set ylabel 'Ionization Probability' offset -1.0,0.0
set xlabel 't [fs]' offset 0.0,-0.5
set format y '%3.1f'
#set mytics 10
set yr [0:1]
set ytics 0.2
set mytics 4
set xr [0.0:65.0]
#set xtics 0.05
set mxtics 5
#set format x '%4.2f'
set nolabel
set title '$4 \times 10^{14}\,$W/cm$^2$~~~~~2-36-2~~~~T-T' 
set key top right spacing 2.2
plot datadir . '/T-t__2-36-2__1.0676d-1__0375/overlap.out' u ($1*4.8377e-4):48 t '' w l lt 1 lc 1 lw 2
