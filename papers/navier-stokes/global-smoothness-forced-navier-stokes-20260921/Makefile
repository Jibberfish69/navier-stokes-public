.PHONY: pdf bundle

pdf:
	mkdir -p build
	latexmk -norc -pdf -interaction=nonstopmode -halt-on-error -synctex=1 -outdir=build main.tex
	cp build/main.pdf global-smoothness-forced-navier-stokes.pdf

bundle:
	python3 package.py
