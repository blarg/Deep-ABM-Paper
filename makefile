TEX=pdflatex
BIB=bibtex

all:
	$(TEX) main.tex
	$(BIB) main.aux
	$(TEX) main.tex
	$(TEX) main.tex

clean:
	-@rm main.aux
	-@rm main.log
	-@rm main.pdf
	-@rm main.dvi
	-@rm main.blg
	-@rm main.bbl

.PHONY:	all clean

