TEXFILES=$(wildcard *.tex)

rapport.pdf: $(TEXFILES)
	touch annexes.tex
	pdflatex -shell-escape rapport.tex
	cp rapport.ann annexes.tex
	pdflatex -shell-escape rapport.tex

consultation: rapport.pdf
	evince $^

nettoyage:
	rm rapport.log rapport.toc rapport.lof rapport.ann rapport.aux rapport.pdf
	rm annexes.tex