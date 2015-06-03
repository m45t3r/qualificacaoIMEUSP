# 
# makefile para a compilação do documento
#
# Sáb Jun 23 21:13:37 BRT 2007
#

BASE_NAME = tese-template
CONFIG_FILES = configuracoes.tex variaveis.tex

LATEX     = latex
PDFLATEX  = pdflatex
BIBTEX    = bibtex
MAKEINDEX = makeindex
MAKEGLOSSARIES = scripts/makeglossaries

pdf: $(BASE_NAME).pdf
ps: $(BASE_NAME).ps

$(BASE_NAME).pdf: $(BASE_NAME).tex $(CONFIG_FILES) 
	$(PDFLATEX) $<
	$(BIBTEX) $(BASE_NAME) 
	$(MAKEGLOSSARIES) $(BASE_NAME)
	$(MAKEINDEX) $(BASE_NAME) 
	$(PDFLATEX) $< 
	$(PDFLATEX) $<
	$(PDFLATEX) $<

$(BASE_NAME).ps: $(BASE_NAME).tex $(CONFIG_FILES)
	$(LATEX) $<
	$(BIBTEX) $(BASE_NAME) 
	$(MAKEINDEX) $(BASE_NAME) 
	$(LATEX) $< 
	$(LATEX) $<
	$(LATEX) $<
	
clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.pdf $(BASE_NAME)*.out \
		  $(BASE_NAME)*.lof $(BASE_NAME)*.lot 
		rm -f capitulos/*.*~ capitulos/*.*.backup capitulos/*.aux
	rm -f postextual/*.*~ postextual/*.*.backup postextual/*.aux
	rm -f pretextual/*.*~ pretextual/*.*.backup pretextual/*.aux
	rm -f *.acn *.acr *.alg *.bbl *.idx *.ist *.glsdefs
