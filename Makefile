FILE=main

pdf x:
	latexmk ${FILE}.tex -bibtex
	latexmk -c

quiet q:
	latexmk ${FILE}.tex -bibtex -quiet
	latexmk -c

view v:
	open ${FILE}.pdf

clean c:
	latexmk -c
	rm -rf _minted-main .auctex-auto *.log *.run.xml *.auxlock

nuke n:
	latexmk -C
	rm -rf _minted-main .auctex-auto *.log *.run.xml *.txt *.auxlock
