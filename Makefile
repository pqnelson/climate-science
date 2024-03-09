TEX=pdflatex
BIB=bibtex
FILE=main
TEXFLAGS=-interaction=batchmode

all:
	$(TEX) -draftmode $(TEXFLAGS) $(FILE)
	$(TEX) $(TEXFLAGS) $(FILE)

bib:
	$(TEX) -draftmode $(TEXFLAGS) $(FILE)
	$(BIB) $(FILE)
	$(TEX) -draftmode $(TEXFLAGS) $(FILE)
	$(TEX) $(TEXFLAGS) $(FILE)

preamble:
	$(TEX) -ini -jobname="preamble" "&pdflatex preamble.tex\dump"

.PHONY: img
img:
	cd img && make
