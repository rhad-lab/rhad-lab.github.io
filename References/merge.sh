#!/bin/sh
export PATH=$PATH:/opt/homebrew/Cellar/pandoc/3.2.1/bin/
# Create file instead of using pandoc w/ stdin + format specifier (-f bibtex),
# since there's weird bug where the publisher-place will be missing when used
# that way. Ideally, that should be filled as a bug at:
# https://github.com/jgm/pandoc/issues
cat conferences.bib journals.bib talks.bib > publications.bib
pandoc -t csljson publications.bib -o ../_data/publications.json
