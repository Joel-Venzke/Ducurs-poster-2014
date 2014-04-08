set term pslatex color 
set out 'overlap_350_1.tex'

set multiplot layout 2,0 title '\textbf{9.5235 ev~~~~~$\mathbf{1.0 \times 10^{14}\,}$W/cm$^2$}

set size 1.0,0.65
set origin 0.0,0.0

set xlabel 't [fs]' offset 0.0,-0.5
set ylabel 'probabilities' offset -2.0,0.0
set format y '%3.1f'
#set mytics 10
#set yr [0:1]
set ytics 0.2
set mytics 4
#set xr [0.0:70.0]
#set xtics 0.05
set mxtics 5
#set format x '%4.2f'
set nolabel
set key top right spacing 2.2
#set nokey
plot datadir . '/S-s__2-36-2__0.5338d-1__0350/overlap.out' u ($1*.000120622):2 t '1s' w l lt 1 lc 1 lw 2,\
     datadir . '/S-s__2-36-2__0.5338d-1__0350/overlap.out' u ($1*.000120622):3 t '2s' w l lt 1 lc rgb "#009900" lw 2,\
     datadir . '/S-s__2-36-2__0.5338d-1__0350/overlap.out' u ($1*.000120622):4 t '2p' w l lt 1 lc 3 lw 2

set size 1.0,0.3
set origin 0.0,0.625
unset xlabel
set ylabel 'intensity' offset -1.0,0.0
set format y '%3.1f'
#set mytics 10
#set yr [0:1]
set ytics 0.2
set xr [0.0:18.0]
set mytics 4
#set xr [0.0:50.0]
#set xtics 0.05
set mxtics 5
#set format x '%4.2f'
set nolabel
set key top right spacing 2.2
unset xtics
#set nokey
plot datadir . '/Pulse_s-s_2-36-2-350_0.5338/pulse.out' u 2:5 t '' w l lt 1 lc 3 lw 2

unset multiplot