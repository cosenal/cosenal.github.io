PANDOC = ~/.cabal/bin/pandoc
TEMPLATE = ./pandoc-templates/resume.latex
SRC = resume.md
DEST = ./downloads/resume.pdf

resume: 
	$(PANDOC) --template=$(TEMPLATE) $(SRC) -o $(DEST)

clean:
	rm -f $(DEST)
