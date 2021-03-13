LATEX = pdflatex -interaction=nonstopmode

SOURCES = $(wildcard *.tex)
SOURCESDEFAULT = $(wildcard *-default.tex)

PDFS = $(SOURCES:.tex=.pdf)
PDFSDEFAULT = $(SOURCESDEFAULT:.tex=.pdf)

.PHONY: warn all tex-examples default

warn:
	@echo "My default action is just to emit this message."
	@echo "Are you sure you want to build _all_ PDFs?"
	@echo "If so, use 'make all' to build all *.tex files in this directory."
	@echo "Run 'make tex-examples' to make the *.tex files from a template."
	@echo "Run 'make default' to compile only the *-default.tex files."

all: $(PDFS)

default: $(PDFSDEFAULT)

tex-examples:
	./make-examples.sh

%.pdf: %.tex
	$(LATEX) $<
	$(LATEX) $<

.PHONY: clean reallyclean

clean:
	rm -f *.aux *.log *.synctex.gz *~

reallyclean: clean
	rm -f *-*-*-*.tex
	rm -f *-*-*-*.pdf
