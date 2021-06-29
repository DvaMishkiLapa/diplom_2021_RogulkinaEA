SHELL=/bin/bash
DOC = "Рогулькина ЕА"

all:
	pdflatex ${DOC}.tex
	pdflatex ${DOC}.tex
	pdflatex ${DOC}.tex

pdflatex:
	@pdflatex ${DOC}.tex

titlepage:
	@sed -e ${SED} titlepage.fodt > tp-output.fodt
	libreoffice --headless --convert-to pdf tp-output.fodt

overfull:
	@pdflatex ${DOC}.tex | grep -va Underfull | grep -a . | grep -aC 12 Overfull
	@pdflatex ${DOC}.tex | grep -c Overfull

clean:
	rm -f ./grap/*.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *out *.run.xml *.toc
	rm -f tp-output.fodt tp-output.pdf diplom.pdf
