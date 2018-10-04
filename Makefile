all: Makefile *.tex *.bib *.cls
	pdflatex main
	bibtex main -min-crossrefs=5
	pdflatex main
	pdflatex main

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.rel main.pdf

.PHONY: all clean
