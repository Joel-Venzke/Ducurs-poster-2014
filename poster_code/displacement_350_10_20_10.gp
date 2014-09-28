#
set term pslatex color 
set st d l
set mytics 4
set out 'displacement_350_10_20_10.tex'
set title '\bf  4.0 x 10$^{\bf 14}\,$W/cm$^{\bf 2}$ ~~~ 0.7 a.u.'
set xr [0:40]
set xtics 0,5,40
set mxtics 5
set ytics 0.5
set mytics 5
set format y '%4.1f'
set yr [-1:7.6]
set xlabel 'time [o.c.]'
set ylabel '$Z_{\rm cl}$ [a.u.]' offset 0.5,0.0
set key at 17,7 spacing 1.8
plot 'Data/Pulse_s-s_10-20-10-350/displacement.out' u ($1*40/359.0425):4 t '10-20-10~~S-S'     w l lt 3 lc 3 lw 3,\
	'Data/Pulse_t-t_10-20-10-350/displacement.out' u ($1*40/359.0425):4 t '10-20-10~~L-L'     w l lt 3 lc 1 lw 3
#
