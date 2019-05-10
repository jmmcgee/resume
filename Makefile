.PHONY: FORCE_MAKE all clean

all: portfolio.pdf
portfolio.pdf: resume.pdf cover.pdf

%.pdf : %.tex
	latexmk -pdfxe $<

clean:
	latexmk -CA
