all:
	make project.pdf
project.pdf: project.tex sources.bib
	latexmk -lualatex
clean:
	latexmk -c
	rm -rf __pycache__ pythontex-files-project *.pytxcode *.auxlock *.run.xml data *.bbl project.pdf tmp/project-figure* *.figlist *.makefile latex.out *.mod
