#MICROLOCAL= editorial
MICROLOCAL= hipatia
PATHLOTE = ../../../lotes/
PADRAO = EBOOK
PDF = LIVRO.pdf

PAGINADECREDITOS = 2
EXTENSAO = png
TITULOEPUB = NIETZSCHE_EXTEMPORANEA
COVER = capa.jpg
COD_PRODUTO = 
LOTE = LOTE5

TITLE = "Sobre a utilidade e a desvantagem da história para a vida"
TITLESORT = "Sobre a utilidade e a desvantagem da história para a vida"
SUBTITLE = 
INTERNET = sobre-a-utilidade-e-a-desvantagem-da-historia-para-a-vida
AUTORS = "Friedrich Nietzsche"  
AUTORSSORT = "Nietzsche, Friedrich"
Contribuitors = "[AUTHOR|Friedrich Nietzsche|Nietzsche, Friedrich]"
ORGANIZACAO = 
TRADUCAO = "André Itaparica"
ISBN = 9788577155460
ISBN_IMPRESSO = 9788577155453
PRECO = "9,9"
PRECO_IMPRESSO = "39,90" 
DATA_LANCAMENTO = "2017-06-01" #YYYY-MM-DD
COMMENTS = "Publicada em 1874, a segunda das quatro considerações extemporâneas, Sobre a utilidade e a desvantagem da história para a vida, foi definida pelo autor em sua autobiografia, Ecce homo, como sendo o tratado que, através de nossa capacidade de perceber e dar significado ao passado, «traz à luz o que há de perigoso, corrosivo e envenenador da vida»."
BIOGRAFIA = "Friedrich Nietzsche (Röcken, 18440—Weimar, 1900), filósofo efilólogo alemão, foi crítico mordaz da cultura ocidental e um dos pensadoresmais influentes da modernidade. Descendente de pastores protestantes, opta noentanto por seguir carreira acadêmica. Aos 25 anos, torna-se professor deletras clássicas na Universidade da Basileia, onde se aproxima do compositorRichard Wagner. Serve como enfermeiro voluntário na guerra franco-prussiana,mas contrai difteria, a qual prejudica sua saúde definitivamente. Retorna aBasileia e passa a frequentar mais a casa de Wagner. Em 1879, devido aconstantes recaídas, deixa a universidade e passa a receber uma renda anual. Apartir daí assume uma vida errante, dedicando-se exclusivamente à reflexão e àredação de suas obras, dentre as quais se destacam: O nascimento da tragédia (1872), Considerações Extemporâneas (1873—1874), Assim falavaZaratustra (1883—1885), Para além do bem e mal (1886), A genealogia da moral (1887) e O anticristo (1895). Em 1889, apresenta os primeiros sintomas de problemas mentais, provavelmente decorrentes de sífilis. Falece em 1900."
RESENHA = 
SUMARIO = 
NUM_CAPITULOS = 
TRECHO = 
ASSUNTO = "Filosofia" 
EDICAO = 1

BISAC = FIC027020
BISAC2 = FIC027000
WGS = 950
WGS2 = 
THEMA = DNC
THEMA2 = DN

IDIOMAORIGINAL = pt
PRODUCER = "Editora Hedra"
LANGUAGE = pt
DATE = 2016
PUBLISHER = "Hedra"

ProductType = ebook
Title = $(TITLE) 
Subtitle = $(SUBTITLE)
Contributors = "[AUTHOR\|$(AUTORS)][EDITED_BY_PERSON\|$(ORGANIZACAO)][TRANSLATED_BY\|$(TRADUCAO)]"
SeriesType = numbered
SeriesName = 
SeriesNumber = 
MinMaxAge = 
PagesEstimated = $(shell pdftk LIVRO.pdf dump_data | grep NumberOfPages | cut -d ":" -f2) 
ISBNEPUB = $(ISBN)
ISBNPDF = 
ISBNMobipocket = 
ISBNFixedLayout = 
ISBNIBooksAuthor = 
DRMType = HARD
ProductReleaseDate = $(shell date +"%Y-%m-%d" )
ProductCancellationDate = 
StandardPrices = [$(PRECO)|BRL]
PrintReleaseDate = $(DATA_LANCAMENTO)
ISBNPrint = $(ISBN_IMPRESSO)
PricePrint = [$(PRECO_IMPRESSO)|BRL]
GenreCodeBisac1 = $(BISAC)
GenreCodeBisac2 = $(BISAC2)
GenreCodeWgs1 = $(WGS)
GenreCodeWgs2 = $(WGS2)
GenreCodeThema1 = $(THEMA)
GenreCodeThema2 = $(THEMA2)
GenreCodeThemaQualifiers = 
ProductLanguage = $(LANGUAGE)
SecondLanguage = 
OriginalLanguage = $(IDIOMAORIGINAL)
ProductInfoText = $(COMMENTS)
AuthorBiography = $(BIOGRAFIA)
Reviews = $(RESENHA)
TableOfContents = $(SUMARIO)
TextExtract = $(TRECHO)
Keywords = $(ASSUNTO)
AuthorWebsite = 
ProductWebsite = https://hedra.com.br/livros/$(INTERNET)
TerritoryListType = without
Territories = 
ShopListType = 
Shops = 
CountryPrices = 
ProductVersion = 
ProductVersionNumber = $(EDICAO)
NumberOfChapters = $(NUM_CAPITULOS)
PublisherID = 2286591



BIN=/bin


all:
#	-sh texrepair.sh
	hevea $(PADRAO).tex -o $(PADRAO).html
	sed -i 's/\<img src="CREDITOS\.png\>/\<img alt="Créditos" src="CREDITOS.png"\>/' EBOOK.html
#	ebook-convert $(PADRAO).html $(PADRAO).mobi --page-breaks-before / --toc-threshold 0 --level1-toc //h:h2 --level2-toc //h:h3 --level3-toc //h:h4 --cover ../capa.png 
	ebook-convert $(PADRAO).html $(PADRAO).mobi --title $(TITLE) --authors $(AUTORS) --comments $(COMMENTS) --publisher $(PUBLISHER) --rating 4 --book-producer $(PRODUCER) --language $(LANGUAGE) --author-sort $(AUTORSSORT) --title-sort $(TITLESORT) --isbn $(ISBN) --pubdate $(DATE) --series $(SERIES) --tags $(TAGS) --page-breaks-before / --toc-threshold 0 --level2-toc //h:h1 --level2-toc //h:h2 --level3-toc //h:h3 --cover $(COVER) 
	ebook-convert $(PADRAO).html $(PADRAO).epub --title $(TITLE) --authors $(AUTORS) --comments $(COMMENTS) --publisher $(PUBLISHER) --rating 4 --book-producer $(PRODUCER) --language $(LANGUAGE) --author-sort $(AUTORSSORT) --title-sort $(TITLESORT) --isbn $(ISBN) --pubdate $(DATE) --series $(SERIES) --tags $(TAGS) --page-breaks-before / --toc-threshold 0 --level2-toc //h:h1 --level2-toc //h:h2 --level3-toc //h:h3 --cover $(COVER) 

viewer:
	ebook-viewer EBOOK.epub
open:
	sh open.sh
close-project:
	sh close.sh
credits:
	pdftk $(PDF) cat $(PAGINADECREDITOS) output CREDITOS.pdf
	convert -density 200 CREDITOS.pdf -quality 100 CREDITOS.png
#	mogrify -format png CREDITOS.pdf
#	mogrify -shave 190x120 -gravity south -chop x200 -frame 30 CREDITOS.png	
#	mogrify -shave 190x120 -gravity south CREDITOS.png	
#	mogrify -resize 601 CREDITOS.png

rename:
	cp $(PADRAO).epub $(TITULOEPUB).epub
	cp $(PADRAO).mobi $(TITULOEPUB).mobi
	cp $(PDF) $(TITULOEPUB).pdf
	zip $(TITULOEPUB).zip $(TITULOEPUB).*	
hifens:
	sed -i 's/"-/-/g' *.tex	
copy:
	cp ~/Dropbox/LATEX/Templates/ebook/EBOOK.tex .
	cp ~/Dropbox/LATEX/Templates/ebook/.gitignore .
	cp ~/Dropbox/LATEX/Templates/ebook/english.hva .
	cp ~/Dropbox/LATEX/Templates/ebook/repair.sh .
	cp ~/Dropbox/LATEX/Templates/ebook/texrepair.sh .
	cp ~/Dropbox/LATEX/Templates/ebook/README.markdown .
	cp ~/Dropbox/LATEX/Templates/ebook/stylesheet.css .
	cp ~/Dropbox/LATEX/Templates/ebook/precos.txt .
check:
	epubcheck $(PADRAO).epub
sigil:
	sigil $(PADRAO).epub
capa:
	#mogrify -type Grayscale $(COVER)
	mogrify -resize 601 $(COVER)
	cp $(COVER) $(TITULOEPUB).${EXTENSAO}
	mogrify -resize x2550 $(TITULOEPUB).${EXTENSAO}
	mogrify -format jpg $(TITULOEPUB).${EXTENSAO}
entrega:
	cp $(TITULOEPUB).epub $(HOME)/Dropbox/CONTRATOS_GERAIS/
	cp $(TITULOEPUB).mobi $(HOME)/Dropbox/CONTRATOS_GERAIS/
	cp $(TITULOEPUB).zip  $(HOME)/Dropbox/CONTRATOS_GERAIS/
	cp $(TITULOEPUB).pdf  $(HOME)/Dropbox/CONTRATOS_GERAIS/
	cp $(TITULOEPUB).txt  $(HOME)/Dropbox/CONTRATOS_GERAIS/
	cp $(TITULOEPUB).jpg  $(HOME)/Dropbox/CONTRATOS_GERAIS/
metadados:
	echo "TÍTULO:\t\t\t" $(TITLE) >  $(TITULOEPUB).txt
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "AUTOR:\t\t\t" $(AUTORS) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "ORGANIZADOR:" $(ORGANIZADOR) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "TRADUTOR:\t\t" $(TRADUTOR) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "ISBN:\t\t\t\t" $(ISBN) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "ISBN IMPRESSO:\t\t\t" $(ISBN_IMPRESSO) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "ANO:\t\t\t\t" $(DATE) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "TEXTO: " $(COMMENTS) >>  $(TITULOEPUB).txt	
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	pdftk LIVRO.pdf dump_data | grep NumberOfPages >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "BISAC =" $(BISAC) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "BISAC2 =" $(BISAC2) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "WGS =" $(WGS) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "WGS2 =" $(WGS2) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "THEMA =" $(THEMA) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "THEMA2 =" $(THEMA2) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "TAGS: " $(ASSUNTO) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	
	echo "PRECO IMPRESSO: " $(PRECO) >> $(TITULOEPUB).txt 
	echo "-----------------------------------------------------------" >>  $(TITULOEPUB).txt	

capa-internet:
	wget https://hedra.com.br/uploads/book/cover/$(INTERNET).${EXTENSAO}
#	cp $(HOME)/Dropbox/ARQUIVOS_GERAIS/GERAL/CAPAS_JPG/$(INTERNET).${EXTENSAO} .
	mv $(INTERNET).${EXTENSAO} $(COVER)
	mogrify -format png $(COVER)
atualiza:
	-cp Makefile ../ebook/
	-cp *.sh ../ebook/
	-cp EBOOK.tex ../ebook/	
clean:
	rm *.html *.htoc *.haux
matriz:
	-cp Makefile ~/Dropbox/LATEX/Templates/ebook	
	-cp repair.sh ~/Dropbox/LATEX/Templates/ebook	
	-cp EBOOK.tex ~/Dropbox/LATEX/Templates/ebook	
	-cp texrepair.sh ~/Dropbox/LATEX/Templates/ebook	
	-cp stylesheet.css ~/Dropbox/LATEX/Templates/ebook	
	-cp README.markdown ~/Dropbox/LATEX/Templates/ebook	
	-cp precos.txt ~/Dropbox/LATEX/Templates/ebook	
isbn:
	google-chrome https://docs.google.com/a/hedra.com.br/spreadsheets/d/1S8AW5Ly1JGePr2eSOA0Pi1ACX8qu3C_mpY6AADjUj6w/edit?usp=drive_web&usp=sheets_home&ths=true
wgs:	
	evince $(HOME)/Dropbox/CONTRATOS_GERAIS/CLASSIFICACOES/WGS.pdf
thema:
	evince $(HOME)/Dropbox/CONTRATOS_GERAIS/CLASSIFICACOES/Thema.pdf
bisac:
	google-chrome https://www.bisg.org/complete-bisac-subject-headings-2014-edition
lote:
	-mkdir -p $(PATHLOTE)$(LOTE) 
	-cat $(TITULOEPUB).csv >> $(PATHLOTE)$(LOTE)/$(LOTE).csv		
	-cp $(TITULOEPUB).epub $(PATHLOTE)$(LOTE)/
	-cp $(TITULOEPUB).jpg $(PATHLOTE)$(LOTE)/

bookwire:
	-google-chrome http://macs.bookwire.de/
	-cd ~/EBOOK/
	-gedit $(TITULOEPUB).txt
csv-bookwire:
	echo "\"$(ProductType)\";\"$(Title)\";\"$(Subtitle)\";\"$(Contributors)\";\"$(SeriesType)\";\"$(SeriesName)\";\"$(SeriesNumber)\";\"$(MinMaxAge)\";\"$(PagesEstimated)\";\"$(ISBNEPUB)\";\"$(ISBNPDF)\";\"$(ISBNMobipocket)\";\"$(ISBNFixedLayout)\";\"$(ISBNIBooksAuthor)\";\"$(DRMType)\";\"$(ProductReleaseDate)\";\"$(ProductCancellationDate)\";\"$(StandardPrices)\";\"$(PrintReleaseDate)\";\"$(ISBNPrint)\";\"$(PricePrint)\";\"$(GenreCodeBisac1)\";\"$(GenreCodeBisac2)\";\"$(GenreCodeWgs1)\";\"$(GenreCodeWgs2)\";\"$(GenreCodeThema1)\";\"$(GenreCodeThema2)\";\"$(GenreCodeThemaQualifiers)\";\"$(ProductLanguage)\";\"$(SecondLanguage)\";\"$(OriginalLanguage)\";\"$(ProductInfoText)\";\"$(AuthorBiography)\";\"$(Reviews)\";\"$(TableOfContents)\";\"$(TextExtract)\";\"$(Keywords)\";\"$(AuthorWebsite)\";\"$(ProductWebsite)\";\"$(TerritoryListType)\";\"$(Territories)\";\"$(ShopListType)\";\"$(Shops)\";\"$(CountryPrices)\";\"$(ProductVersion)\";\"$(ProductVersionNumber)\";\"$(NumberOfChapters)\";\"$(PublisherID)\";" >> $(TITULOEPUB).bk
	iconv -f utf-8 -t UTF-16 $(TITULOEPUB).bk > $(TITULOEPUB).csv 
	rm $(TITULOEPUB).bk
