FILE=main

pdf .:
	latexmk ${FILE}.tex -quiet
	latexmk -c

debug d:
	latexmk ${FILE}.tex 
	latexmk -c

view v:
	open ${FILE}.pdf

clean c:
	latexmk -c
	rm -rf _minted-main .auctex-auto *.log *.run.xml *.auxlock

nuke n:
	latexmk -C
	rm -rf _minted-main .auctex-auto *.log *.run.xml *.txt *.auxlock
