MDS := $(wildcard *.md)
PDFS := $(MDS:.md=.pdf)

%.pdf: %.md
	pandoc -t beamer $< -o $@

.PHNOY: all clean

all: $(PDFS)

clean:
	rm $(PDFS)
