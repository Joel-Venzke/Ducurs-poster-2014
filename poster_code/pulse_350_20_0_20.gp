set term pslatex color 
set out 'pulse_350_20_0_20.tex'
set ylabel 'electric field [a.u.]' offset -0.0,0.0
set xlabel 't [fs]' offset 0.0,-0.5
set multiplot
set xr [0:18]
set xtics 2
set mxtics 4
set format x '%2.0f'
set yr [-0.12:0.24]
set ytics -0.15,0.05,0.12
set mytics 5
set format y '%5.2f'
set title '\bf 20-0-20~~~~~ 4.0 x 10$^{\bf 14}\,$W/cm$^{\bf 2}$'
set xzeroaxis
set key spacing 1.5 top center
plot datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:5 t '\tt S-S' w l lt 1 lc 3 lw 2, \
     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:5 t '\tt L-L' w l lt 1 lc 1 lw 2
#set notitle
#set origin 0.64,0.595
#set yr [-0.12:0.12]
#set ytics -0.20,0.10
#set mytics 5
#set format y '\footnotesize %4.1f'
#set xr [16.4:17.6]
#set xtics 16.5,1.0,17.5
#set mxtics 10
#set format x '\footnotesize %4.1f'
#set ylabel ''
#set xlabel ''
#set size 0.32
#set nokey
#plot datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:($3 *.10676) t #'\footnotesize \tt S-S' w l lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:($3 *.10676) t #'\footnotesize \tt L-L' w l lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:($3 *-.10676) t '' w l #lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:($3 *-.10676) t '' w l #lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:5 t '' w l lt 1 lc 3 lw #2, \
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:5 t '' w l lt 1 lc 1 lw #2
#set origin 0.08,0.595
#set yr [-0.12:0.12]
#set ytics -0.20,0.10
#set mytics 5
#set format y '\footnotesize %4.1f'
#set xr [0:1.2]
#set xtics 0,0.5,1.5
#set mxtics 5
#set format x '\footnotesize %4.1f'
#set ylabel ''
#set xlabel ''
#set size 0.32
#set nokey
#plot datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:($3 *.10676) t #'\footnotesize \tt S-S' w l lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:($3 *.10676) t #'\footnotesize \tt L-L' w l lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:($3 *-.10676) t '' w l #lt 1 lc 3 lw 2,\
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:($3 *-.10676) t '' w l #lt 1 lc 1  lw 2, \
#     datadir . '/Pulse_s-s_20-0-20-350/pulse.out' u 2:5 t '' w l lt 1 lc 3 lw #2, \
#     datadir . '/Pulse_t-t_20-0-20-350/pulse.out' u 2:5 t '' w l lt 1 lc 1 lw #2
#