#
set term pslatex color 
set mytics 4
set out 'displacement_350_2_36_2.tex'
set title '\textbf{2-36-2~~~$\mathbf{4.0 \times 10^{14}\,}$W/cm$^2$~~~0.350 a.u.}' 
set xr [0:40]
set xtics 0,5,40
set mxtics 5
set ytics 2.0
set mytics 5
set format y '%4.1f'
set yr [-1:8.0]
set xlabel 'time [o.c.]'
set ylabel '$Z_{\rm cl}$ [a.u.]' offset 0.5,0.0
set key top left spacing 2.2
set nolabel
plot datadir . '/Pulse_s-s_2-36-2-350/displacement.out' u ($1*40/359.0425):4 t 'S-S' w l lt 1 lc 3 lw 2,\
	 datadir . '/Pulse_t-t_2-36-2-350/displacement.out' u ($1*40/359.0425):4 t 'L-L' w l lt 1 lc 1 lw 2
#
