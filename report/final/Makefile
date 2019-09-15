all:
	pdflatex --shell-escape report.tex
	biber report
	pdflatex --shell-escape report.tex
	pdflatex --shell-escape report.tex
clean:
	rm *.aux *.bbl *.bcf *.blg *.xml
