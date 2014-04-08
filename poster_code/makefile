POSTER 	= 	poster
FIGURES	=	spectrum_350_2_36_2_highin spectrum_350_2_36_2_lowin \
			spectrum_375_2_36_2_highin spectrum_375_2_36_2_lowin \
			overlap_350_4 overlap_350_1 overlap_350_025 \
			approx_ionization fourier_350_2_36_2 pulse_350_2_36_2 \
			fourier_350_7_26_7 pulse_350_7_26_7 \
			fourier_350_10_20_10 pulse_350_10_20_10 \
			fourier_350_20_0_20 pulse_350_20_0_20
all: poster

poster: pos
	cp output.pdf ../poster.pdf

bib: figs
	latex $(POSTER).tex
	bibtex $(POSTER).aux

pos: bib
	latex $(POSTER).tex
	dvips $(POSTER).dvi 
	ps2pdf $(POSTER).ps
	cp $(POSTER).pdf output.pdf
#	pdftk $(POSTER).pdf cat 2- output output.pdf

figs: 
	for fig in $(FIGURES); do \
		gnuplot -e "datadir='Data'" $$fig.gp; \
		latex c_$$fig.tex; \
		dvips c_$$fig.dvi; \
	done

clean:
	rm -f *.aux *.bbl *.blg *.d *.dvi *.out *.ps *.log *.table
	for fig in $(FIGURES); do \
		rm -f $$fig.tex; \
	done
	rm -f *.pdf