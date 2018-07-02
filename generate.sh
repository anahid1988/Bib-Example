#!/bin/bash
set -e 

BIBLIOGRAPY="../bibliograpy/bibliogra.py"
BIB="./DeepRUL.bib.webexport"

cat ./DeepRUL_peerreviewed.bib ./DeepRUL_eprint.bib > "${BIB}"

rm -rf DeepRULbib_html/*.html
cp Changelog.txt DeepRULbib_html/

python2 ${BIBLIOGRAPY} -f "${BIB}" blockchainbib_html

cp DeepRULbib_html/year_reverse.html DeepRULbib_html/index.html
