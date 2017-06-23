# Limpeza
  mv fichatecnica.sty fichatecnica.txt && rm *.sty *~ verificador script.pl dic.* ficha.png
  rm *.sty *.cls pecinha* FINAIS* NOVIDADES PUBLICIDADE.tex verificador 
  rm divulga -rf
# Copiar arquivos
  cp ../ebook/EBOOK.tex .
  cp ../ebook/english.hva .
  cp ../ebook/repair.sh .
  cp ../ebook/texrepair.sh .
  cp ../ebook/.gitignore .
# git
  Git "primeiros arquivos"
# Metadados
  vim Makefile
  make metadados
## Capa
  make capa-internet
  make capa
## Correções no TeX
  sh texrepair.sh
## Epub
#  make credits
  make
  sh repair.sh
  make sigil
  make rename
  make entrega
  git add . 
  git commit "pronto"
