LATEX = pdflatex -interaction=nonstopmode

SOURCES = $(wildcard *.tex)

PDFS = $(SOURCES:.tex=.pdf)

.PHONY: warn all tex-examples

warn:
	@echo "My default action is just to emit this message."
	@echo "Are you sure you want to build _all_ PDFs?"
	@echo "If so, use 'make all' to build all *.tex files in this directory."
	@echo "Run 'make tex-examples' to make many *.tex files from a template."

all: $(PDFS)

tex-examples:
	./make-examples.sh

%.pdf: %.tex
	$(LATEX) $<
	$(LATEX) $<

.PHONY: clean reallyclean

clean:
	rm -f *.aux *.log

reallyclean: clean
	rm -f *-*-*-*.tex
	rm -f *-*-*-*.pdf
