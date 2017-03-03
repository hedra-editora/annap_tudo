mkdir -p provisorio
cp EBOOK.epub provisorio
cd provisorio
unzip EBOOK.epub

rm EBOOK.epub

sed 's/<hr\ .*por//'
sed 's/^<\/em><a\ href="http.*//'

zip -rX ../EBOOK.epub mimetype META-INF/ *



#A warning was reported for the CSS-file:
#Fixed values were found in your CSS file (mm, cm, in, pt or pc). This can cause problems on kindle devices. (OEBPS/Styles/stylesheet.css, *.calibre: margin=0 5pt)
#A warning was reported for the OPF file: No HTML-file has been referenced as table of contents in <guide>. To ensure navigation on Kindle devices, you should fix this.
