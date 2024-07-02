#!/bin/sh
cat conferences.bib journals.bib talks.bib > publications.bib
/opt/homebrew/Cellar/pandoc/3.2.1/bin/pandoc -t csljson publications.bib -o ../_data/publications.json
