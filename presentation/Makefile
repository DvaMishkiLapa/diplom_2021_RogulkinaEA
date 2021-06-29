SHELL=/bin/bash

DOC = presentation

all:
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

overfull:
	@pdflatex ${DOC}.tex | grep -va Underfull | grep -a . | grep -aC 12 Overfull
	@pdflatex ${DOC}.tex | grep -c Overfull

clean:
	rm -f ./grap/*.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *out *.run.xml *.toc *.snm *.nav
