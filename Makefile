%.dvi: %.tex
	latex $<

%.pdf: %.ps
	ps2pdf $<
	
%.ps:%.dvi
	dvips $< -o $@

all: slides.pdf
 
clean:
	-rm *.pdf
	-rm *.dvi
	-rm *.ps
