#!/bin/sh
export PATH=$PATH:/opt/homebrew/Cellar/pandoc/3.2.1/bin/
cat conferences.bib journals.bib talks.bib > publications.bib
pandoc -t csljson publications.bib -o ../_data/publications.json
