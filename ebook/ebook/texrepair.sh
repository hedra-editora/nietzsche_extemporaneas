sed -i 's/hedraquote/quote/g' *.tex
sed -i 's/"-/-/g' *.tex
sed -i 's/{}-/-/g' *.tex
sed -i 's/\\versal/\\textsc/g' PRETAS.tex
sed -i 's/resumopage/itemize/g' PRETAS.tex
#sed -i 's/\\SVN.*//g' PRETAS.tex

sed -i 's/\\hyphenpenalty=.*//g' *.tex
sed -i 's/\\exhyphenpenalty=.*//g' *.tex
sed -i 's/\\pretolerance=.*//g' *.tex                                                                                                                               sed -i 's/\\tolerance=.*//g' *.tex

