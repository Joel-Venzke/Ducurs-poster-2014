POSTER 	= 	poster
FIGURES	=	spectrum_350_2_36_2_highin spectrum_350_2_36_2_midin \
			spectrum_375_2_36_2_highin spectrum_375_2_36_2_midin \
			spectrum_350_10_20_10_highin spectrum_350_10_20_10_midin \
			spectrum_375_10_20_10_highin spectrum_375_10_20_10_midin \
			approx_ionization fourier_350_2_36_2 pulse_350_2_36_2 displacement_350_2_36_2\
			fourier_350_10_20_10 pulse_350_10_20_10 displacement_350_10_20_10\
			overlap_350_4 \
			overlap_350_1 overlap_350_025 \
			fourier_350_7_26_7 pulse_350_7_26_7 spectrum_350_2_36_2_lowin spectrum_350_10_20_10_lowin\
			spectrum_350_3_34_3_highin spectrum_350_4_32_4_highin spectrum_375_2_36_2_lowin spectrum_375_10_20_10_lowin\
			fourier_350_20_0_20 pulse_350_20_0_20 spectrum_350_20_0_20_highin\

			
all: poster

poster: pos
	cp output.pdf ../poster.pdf
	open output.pdf

bib: figs
	latex $(POSTER).tex
	bibtex $(POSTER).aux

pos: bib
	latex $(POSTER).tex
	dvips $(POSTER).dvi 
	ps2pdf $(POSTER).ps
	cp $(POSTER).pdf output.pdf
	# uncomment if the poster is being pushed to a second page
	#	remove the first blank page
	pdftk $(POSTER).pdf cat 2-end output output.pdf

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