set term pslatex color 
set out 'spectrum_350_20_0_20_highin.tex'
set ylabel '$dP/dE$ [a.u.]' offset -1.0,0.0
set xlabel '$E$ [a.u.]' offset 0.0,-0.5
set format y '%6.2f'
set mytics 10
#set yr [0:1.2]
#set ytics 0.2
#et mytics 4
set log y
set yr [0.0015:100]
set xr [0.1:0.4]
set xtics 0.05
set mxtics 5
set format x '%4.2f'
set nolabel
#set label '$4 \times 10^{14}\,$W/cm$^2$' at 1200,0.1
set title '\textbf{20-0-20~~~$\mathbf{4.0 \times 10^{14}\,}$W/cm$^2$~~~9.5 eV}' 
set key top right spacing 2.2
#set nokey
plot datadir . '/S-s__20-0-20__1.0676d-1__0350/betas.out' u 1:2 t '\tt S-S' w l lt 1 lc 1 lw 2,\
     datadir . '/T-s__20-0-20__1.0676d-1__0350/betas.out' u 1:2 t '\tt T-S' w l lt 1 lc rgb "#009900" lw 2,\
     datadir . '/S-t__20-0-20__1.0676d-1__0350/betas.out' u 1:2 t '\tt S-T' sm cs w l lt 1 lc 3 lw 2,\
     datadir . '/T-t__20-0-20__1.0676d-1__0350/betas.out' u 1:2 t '\tt T-T' sm cs w l lt 1 lc 7 lw 2