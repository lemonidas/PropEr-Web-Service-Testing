.SUFFIXES: .pdf .dvi .tex
.PHONY: default clean distclean

PAPER = wwv2012

default: $(PAPER).pdf

%.pdf: %.tex
	latexmk -pdf $*

%.jpg: %.pdf
	./make_thumb.sh $(basename $*)

clean:
	@$(RM) *.aux *.lof *.log *.lot *.out *.toc *.nav *.pag *.snm *.bbl *.blg *~ \#*\# *.fdb_latexmk

distclean: clean
	@$(RM) $(PAPER).pdf $(PAPER).dvi $(PAPER).ps $(PAPER).jpg
