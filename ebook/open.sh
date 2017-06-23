mkdir -p provisorio
cp EBOOK.epub provisorio
cd provisorio
unzip EBOOK.epub
cp ../stylesheet.css .
rm EBOOK.epub


sed -i 's/<blockquote class="quote">/<div class="quote">/g' *.html
sed -i 's/<blockquote>/<div class="quote">/g' *.html
sed -i 's/<\/blockquote>/<\/div>/g' *.html
sed -i 's/<ol class="enumerate" type="1">/<ol>/g' *.html
sed -i 's/<ol type="1" class="enumerate">/<ol>/g' *.html
sed -i 's/Capítulo.[0-9]\+..//g' *.ncx
sed -i 's/Chapter.[0-9]\+..//g' *.ncx
sed -i 's/Capítulo.[0-9]\+..//g' *.html
sed -i 's/Chapter.[0-9]\+..//g' *.html
sed -i 's/\=10000//g' *.html
sed -i 's/\=2000//g' *.html

sed -i 's/<\/dt>\n.*<dd class="dd-thefootnotes">\n.*<div class="footnotetext">//g' *.html
sed -i 's/<\/div>\n.*<\/dd>/</dd>/g' *.html

sed -i 's/\/>"&gt;/>/g' *000.html
sed -i 's/&lt;//g' *000.html

sed -i 's/[0-9]\+<\/text>/<\/text>/g' *.ncx
sed -i 's/<text>\(.\)/<text>\u\1/g' *.ncx

#sed 's/<hr\ .*por//'
#sed 's/^<\/em><a\ href="http.*//'


zip -rX ../EBOOK.epub mimetype META-INF/ OEBPS/ *



#A warning was reported for the CSS-file:
#Fixed values were found in your CSS file (mm, cm, in, pt or pc). This can cause problems on kindle devices. (OEBPS/Styles/stylesheet.css, *.calibre: margin=0 5pt)
#A warning was reported for the OPF file: No HTML-file has been referenced as table of contents in <guide>. To ensure navigation on Kindle devices, you should fix this.
