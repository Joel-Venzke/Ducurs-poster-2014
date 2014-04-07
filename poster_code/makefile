POSTER 	= 	poster
FIGURES	=	spectrum_350_2_36_2_highin spectrum_350_2_36_2_lowin \
			spectrum_375_2_36_2_highin spectrum_375_2_36_2_lowin \
			overlap_350 overlap_375 approx_ionization \
			pulse_350_2_36_3 pulse_375_2_36_3
all: poster

poster: pos
	# remove the extra files when done
	#rm -f *.aux *.d *.dvi *.log *.table
	rm -f $(POSTER).pdf
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
	rm -f *.aux *.d *.dvi *.gnuplot *.log *.table
	rm -f $(POSTER).pdf
	rm -f *.pdf