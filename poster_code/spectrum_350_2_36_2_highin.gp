set term pslatex color 
set out 'spectrum_350_2_36_2_highin.tex'
set ylabel '$dP/dE$ [atomic units]' offset -1.0,0.0
set xlabel '$E$ [atomic units]' offset 0.0,-0.5
set format y '%6.2f'
set mytics 10
#set yr [0:1.2]
#set ytics 0.2
#et mytics 4
set log y
set yr [0.02:100]
set xr [0.1:0.4]
set xtics 0.05
set mxtics 5
set format x '%4.2f'
set nolabel
#set label '$4 \times 10^{14}\,$W/cm$^2$' at 1200,0.1
set title '$4 \times 10^{14}\,$W/cm$^2$~~~~~2-36-2' 
set key top right spacing 2.2
#set nokey
plot datadir . '/S-s__2-36-2__1.0676d-1__0350/betas.out' u 1:2 t 'S-S' w l lt 1 lc 1 lw 2,\
     datadir . '/T-s__2-36-2__1.0676d-1__0350/betas.out' u 1:2 t 'T-S' w l lt 1 lc rgb "#009900" lw 2,\
     datadir . '/S-t__2-36-2__1.0676d-1__0350/betas.out' u 1:2 t 'S-T' sm cs w l lt 1 lc 3 lw 2,\
     datadir . '/T-t__2-36-2__1.0676d-1__0350/betas.out' u 1:2 t 'T-T' sm cs w l lt 1 lc 7 lw 2