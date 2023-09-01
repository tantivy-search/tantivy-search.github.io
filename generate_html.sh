#!/bin/bash

#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )/build"
#echo $DIR
#rm -fr $DIR
#mkdir -p $DIR
#cd $DIR
npm install docco
#rm -fr tantivy
git clone git@github.com:tantivy-search/tantivy.git --depth=1
#git clone /home/paul/git/tantivy
cd tantivy/examples || exit
docco *.rs -o ../../examples/
cd - || exit
#cd ${DIR}
#rm -fr ../examples
#cp -R html ../examples

# building the mdbook
#cd tantivy/doc
#mdbook build
#cd ${DIR}
#rm -fr ../book
#cp -R tantivy/doc/book ../book

rm -fr tantivy
