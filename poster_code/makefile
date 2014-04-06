POSTER = poster
FIGURES = spectrum

all: poster

poster: pos
	# remove the extra files when done
	rm -f *.aux *.d *.dvi *.gnuplot *.log *.ps *.table
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
		latex c-$$fig.tex; \
		dvips c-$$fig.dvi; \
	done

clean:
	rm -f *.aux *.d *.dvi *.gnuplot *.log *.ps *.table
	rm -f $(POSTER).pdf
	rm -f *.pdf