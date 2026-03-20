texfilesrc := $(wildcard ../THHBP2-current/*.tex)

.PHONY: all $(texfilesrc) clean

all: clean $(texfilesrc) THH.bib

clean:
	rm -f $(wildcard ./*.tex) $(wildcard ./*.bib) $(wildcard ./*.out) $(wildcard ./*.aux) $(wildcard ./*.bbl) $(wildcard ./*.blg) $(wildcard ./*.log) $(wildcard ./*.pdf) $(wildcard ./*.toc)

$(texfilesrc):
	latexpand --empty-comments --keep-includes $@ > $(notdir $@)

THH.bib:
	cp ../THHBP2-current/THH.bib ./
