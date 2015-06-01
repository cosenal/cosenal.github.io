PANDOC = ~/.cabal/bin/pandoc
TEMPLATE = ./pandoc-templates/resume.latex
SRC = resume.md
DEST = ./downloads/resume.pdf
DEST-TEX = ./downloads/resume.tex

resume: 
	$(PANDOC) --template=$(TEMPLATE) $(SRC) -o $(DEST)

resume-tex: 
	$(PANDOC) --template=$(TEMPLATE) $(SRC) -o $(DEST-TEX)

# TODO: remove also log, aux files from downloads folder
clean:
	rm -f $(DEST) $(DEST-TEX)
