all:
	pdflatex --shell-escape final.tex
	biber report
	pdflatex --shell-escape final.tex
	pdflatex --shell-escape final.tex
clean:
	rm *.aux *.bbl *.bcf *.blg *.xml
