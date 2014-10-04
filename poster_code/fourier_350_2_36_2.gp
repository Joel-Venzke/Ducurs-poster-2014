set term pslatex color 
set out 'fourier_350_2_36_2.tex'
set ylabel 'square of Fourier transform' offset -1.0,0.0
set xlabel '$E$ [a.u.]' offset 0.0,-0.5
set format y '%3.1f'
set mytics 10
#set yr [0:1]
set log y
#set ytics 0.2
set mytics 10
set yr [0.02:100]
set xr [0.0:0.7]
#set xtics 0.05
set mxtics 5
#set format x '%4.2f'
set nolabel
set title '\textbf{2-36-2~~~$\mathbf{4.0 \times 10^{14}\,}$W/cm$^2$~~~0.350 a.u.}' #'\bf 2-36-2~~~~~ 4.0 x 10$^{\bf 14}\,$W/cm$^{\bf 2}$' 
set key top right spacing 2.2
#set nokey
plot datadir . '/Pulse_s-s_2-36-2-350/fieldFT.out' u 2:5 t '\tt S-S' w l lt 1 lc 3 lw 2,\
     datadir . '/Pulse_t-t_2-36-2-350/fieldFT.out' u 2:5 t '\tt L-L' w l lt 1 lc 1 lw 2

#plot datadir . '/Pulse_g-g_2-36-2-350/fieldFT.out' u 2:5 t '\tt G-G' w l lt 1 lc 1 lw 2,\
#     datadir . '/Pulse_s-s_2-36-2-350/fieldFT.out' u 2:5 t '\tt S-S' w l lt 1 lc rgb "#009900" lw 2,\
#     datadir . '/Pulse_t-t_2-36-2-350/fieldFT.out' u 2:5 t '\tt L-L' w l lt 1 lc 3 lw 2