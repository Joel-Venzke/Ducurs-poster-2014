set term pslatex color 
set out 'pulse_375_2_36_3.tex'
set ylabel 'probabilities' offset -1.0,0.0
set xlabel 't [fs]' offset 0.0,-0.5
set format y '%3.1f'
#set mytics 10
#set yr [0:1]
set ytics 0.2
set mytics 4
set xr [0.0:50.0]
#set xtics 0.05
set mxtics 5
#set format x '%4.2f'
set nolabel
set title '$4 \times 10^{14}\,$W/cm$^2$~~~~~2-36-2~~~~T-T' 
set key top right spacing 2.2
#set nokey
plot datadir . '/Pulse_g-g_2-36-2-350/pulse.out' u 1:3 t 'g-g' w l lt 1 lc 1 lw 2,\
     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 1:3 t 's-s' w l lt 1 lc rgb "#009900" lw 2,\
     datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 1:3 t 't-t' w l lt 1 lc 3 lw 2