.PHONY: FORCE_MAKE all clean

all: resume.pdf

%.pdf : %.tex
	latexmk -pdfxe $<

clean:
	latexmk -CA
