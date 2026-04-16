.PHONY: FORCE_MAKE all clean

all: resume.pdf

%.pdf : %.tex
	latexmk -pdf $<

clean:
	latexmk -CA
