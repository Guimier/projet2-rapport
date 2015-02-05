TEXFILES=$(wildcard *.tex)

rapport.pdf: $(TEXFILES)
	pdflatex rapport.tex
	pdflatex rapport.tex

voir: rapport.pdf
	evince $^
