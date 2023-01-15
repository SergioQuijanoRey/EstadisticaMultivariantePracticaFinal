# This file defines all the tasks (recepies) needed to manage the dev of Latex documents
# See https://github.com/casey/just for more info about the project

LATEX_MAIN := "Document.tex"
TRASH := "trash"
PDF_PROGRAM := "evince"

# Default recepy that shows all recepies
default:
    @just --list

# Compiles the Latex document
compile:
    # We run pdflatex this way so references work well
    pdflatex "{{LATEX_MAIN}}"
    bibtex "{{trim_end_match(LATEX_MAIN, '.tex')}}"
    pdflatex "{{LATEX_MAIN}}"
    pdflatex "{{LATEX_MAIN}}"


# Compiles the project from zero
clean_compile: clean
    # Remove final PDF
    {{TRASH}} {{trim_end_match(LATEX_MAIN, ".tex")}}.pdf || echo "PDF file already removed"

    # Now compile
    just compile

# Cleans all the artifacts created during compilation
clean:
    {{TRASH}} *.log || echo "All .log files already removed"
    {{TRASH}} *.aux || echo "All .aux files already removed"
    {{TRASH}} *.toc || echo "All .toc files already removed"
    {{TRASH}} *.out || echo "All .out files already removed"
    {{TRASH}} *.lof || echo "All .lof files already removed"
    {{TRASH}} *.lol || echo "All .lol files already removed"
    {{TRASH}} *.lot || echo "All .lot files already removed"
    {{TRASH}} *.bbl || echo "All .bbl files already removed"
    {{TRASH}} *.blg || echo "All .blg files already removed"

# Opens the generated PDF file
view:
    {{PDF_PROGRAM}} {{trim_end_match(LATEX_MAIN, ".tex")}}.pdf &
