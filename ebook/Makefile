# ARQUIVOS
PADRAO = EBOOK
PDF = LIVRO.pdf
PAGINADECREDITOS = 2
TITULOEPUB = ANNAP

##### METADATA
#--author-sort
#String to be used when sorting by author.

#--title
#Set the title.
TITLE = "Tudo que eu pensei mas não falei na noite passada"
TITLESORT = $(TITLE)

#--authors
#Set the authors. Multiple authors should be separated by ampersands.
AUTORS = "Anna P."
AUTORSSORT = $(AUTORS)

#--book-producer
#Set the book producer.
PRODUCER = "Editora Hedra"

#--comments
#Set the ebook description.
COMMENTS = "Livro Tudo que eu pensei mas não falei na noite passada é a primeira obra de Anna P e faz parte da Série Sexo."

#--cover
#Set the cover to the specified file or URL
COVER = capa.png

#--isbn
#Set the ISBN of the book.
ISBN = 9788577153602

#--language
#Set the language.
LANGUAGE = "PT-br"

#--pubdate
#Set the publication date.
DATE = 2014

#--publisher
#Set the ebook publisher.
PUBLISHER = Hedra

#--rating
#Set the rating. Should be a number between 1 and 5.
#
#--read-metadata-from-opf, -m
#Read metadata from the specified OPF file. Metadata read from this file will override any metadata in the source file.
#
#--series
#Set the series this ebook belongs to.
SERIES = "Série sexo"

#--series-index
#Set the index of the book in this series.
#
#--tags
#Set the tags for the book. Should be a comma separated list.
TAGS = "sexo, erotismo, pornografia, romance erótico, amor"


all:
	hevea $(PADRAO).tex -o $(PADRAO).html
#	ebook-convert $(PADRAO).html $(PADRAO).mobi --page-breaks-before / --toc-threshold 0 --level1-toc //h:h2 --level2-toc //h:h3 --level3-toc //h:h4 --cover ../capa.png 
	ebook-convert $(PADRAO).html $(PADRAO).mobi --title $(TITLE) --authors $(AUTORS) --comments $(COMMENTS) --publisher $(PUBLISHER) --rating 4 --book-producer $(PRODUCER) --language $(LANGUAGE) --author-sort $(AUTORSSORT) --title-sort $(TITLESORT) --isbn $(ISBN) --pubdate $(DATE) --series $(SERIES) --tags $(TAGS) --page-breaks-before / --toc-threshold 0 --level1-toc //h:h2 --level2-toc //h:h3 --level3-toc //h:h4 --cover $(COVER) 
	ebook-convert $(PADRAO).html $(PADRAO).epub --title $(TITLE) --authors $(AUTORS) --comments $(COMMENTS) --publisher $(PUBLISHER) --rating 4 --book-producer $(PRODUCER) --language $(LANGUAGE) --author-sort $(AUTORSSORT) --title-sort $(TITLESORT) --isbn $(ISBN) --pubdate $(DATE) --series $(SERIES) --tags $(TAGS) --page-breaks-before / --toc-threshold 0 --level1-toc //h:h2 --level2-toc //h:h3 --level3-toc //h:h4 --cover $(COVER) 
#	ebook-viewer TESTE.epub

credits:
	pdftk $(PDF) cat $(PAGINADECREDITOS) output CREDITOS.pdf
	mogrify -density 100 -format png CREDITOS.pdf
	mogrify -shave 190x120 -gravity south -chop x200 -frame 30 CREDITOS.png	
rename:
	cp $(PADRAO).epub $(TITULOEPUB).epub
	cp $(PADRAO).mobi $(TITULOEPUB).mobi
	cp $(PDF) $(TITULOEPUB).pdf
	zip $(TITULOEPUB).zip $(TITULOEPUB).*	
hifens:
	sed -i 's/"-/-/g' *.tex
copy:
	cp ~/LATEX/git/ebook/EBOOK.tex .
	cp ~/LATEX/git/ebook/.gitignore .
	cp ~/LATEX/git/ebook/english.hva .
check:
	epubcheck $(PADRAO).epub
capa:
	mogrify -geometry 601x $(COVER)
	mogrify -channel rgb $(COVER)
entrega:
	cp $(TITULOEPUB).epub /home/hipatia/Dropbox/EBOOKS/
	cp $(TITULOEPUB).mobi /home/hipatia/Dropbox/EBOOKS/
	cp $(TITULOEPUB).zip /home/hipatia/Dropbox/EBOOKS/
	cp $(TITULOEPUB).pdf /home/hipatia/Dropbox/EBOOKS/
clean:
	rm *.html *.htoc *.haux

repair:
	cd provisorio
	sed -i 's/<blockquote>/<div class="blockquote">/g' *
	sed -i 's/<\/blockquote>/<div>/g' *

