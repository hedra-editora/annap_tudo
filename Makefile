all:
	xelatex -halt-on-error LIVRO.tex
	xelatex -halt-on-error LIVRO.tex
lua:
	lualatex  LIVRO.tex
	lualatex  LIVRO.tex
test:
	xelatex LIVRO.tex
	xelatex LIVRO.tex
mobi:	
	tex4ebook -i -f mobi -c tex4ht EBOOK.tex 	
epub3:
	tex4ebook -i -f epub3 -c tex4ht EBOOK.tex 	
epub:	
	tex4ebook -i -c tex4ht EBOOK.tex 	
EBOOK-pdf:
	pdflatex -halt-on-error EBOOK.tex
	pdflatex -halt-on-error EBOOK.tex
EBOOK-check:
	epubcheck EBOOK.epub
clean:
	-rm *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf LIVRO.pdf
	-rm -rf EBOOK-epub
	-rm -rf EBOOK-epub3
	-rm -rf EBOOK-mobi 
