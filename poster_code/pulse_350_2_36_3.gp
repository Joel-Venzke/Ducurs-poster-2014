set term pslatex color 
set out 'pulse_350_2_36_3.tex'
set ylabel 'Intensity a.u.' offset -1.0,0.0
set xlabel 't [fs]' offset 0.0,-0.5
set format y '%3.1f'
#set mytics 10
#set logy
set yr [-.15:.15]
set ytics 0.15
set mytics 4
#set xr [16.4:17.36958]
set xr [16.4:17.4]
set xtics 0.2
set mxtics 5
#set format x '%4.2f'
set nolabel
set title '\textbf{???}' 
set key top right spacing 2.2
#set key left
plot datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:($3 *.10676) t '\tt S-S' w l lt 1 lc 3 lw 2,\
     datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:($3 *.10676) t '\tt T-T' w l lt 1 lc 1  lw 2, \
     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:($3 *-.10676) t '' w l lt 1 lc 3 lw 2,\
     datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:($3 *-.10676) t '' w l lt 1 lc 1  lw 2, \
     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:5 t '' w l lt 1 lc 3 lw 2, \
      datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:5 t '' w l lt 1 lc 1 lw 2

#plot datadir . '/Pulse_g-g_2-36-2-350/pulse.out' u 2:($3 *.10676) t '\tt G-G' w l lt 1 lc rgb "#009900" lw 2,\
#     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:($3 *.10676) t '\tt S-S' w l lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:($3 *.10676) t '\tt T-T' #w l lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_g-g_2-36-2-350/pulse.out' u 2:($3 *-.10676) t '' w l lt 1 lc rgb "#009900" lw 2,\
#     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:($3 *-.10676) t '' w l lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:($3 *-.10676) t '' w l lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_s-s_2-36-2-350/pulse.out' u 2:5 t '' w l lt 1 lc 3 lw 2, \
#      datadir . '/Pulse_t-t_2-36-2-350/pulse.out' u 2:5 t '' w l lt 1 lc 1 lw 2