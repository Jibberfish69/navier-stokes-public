BUILD_DIR := .build
TEMPLATES := $(sort $(wildcard *.tex))
PDFS := $(TEMPLATES:.tex=.pdf)

.PHONY: all clean

all: $(PDFS)

%.pdf: %.tex
	mkdir -p "$(BUILD_DIR)/$*"
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$(BUILD_DIR)/$*" "$<"
	cp "$(BUILD_DIR)/$*/$@" "$@"

clean:
	rm -rf "$(BUILD_DIR)"
