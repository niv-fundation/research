# Makefile for simplifying the LaTeX build process

# Source file and output directory
SRC=./papers/DAOResearch.tex
OUT_DIR=./out

# Default target
all: pdf view

# Target for PDF generation
pdf:
	@mkdir -p $(OUT_DIR)
	@pdflatex -output-directory=$(OUT_DIR) $(SRC)

# Target for viewing the PDF in Firefox
view:
	@firefox $(OUT_DIR)/DAOResearch.pdf &

# Clean up auxiliary files
clean:
	@rm -rf $(OUT_DIR)/*
