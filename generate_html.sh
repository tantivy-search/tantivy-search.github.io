#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )/build"
echo $DIR
rm -fr $DIR
mkdir -p $DIR
cd $DIR
npm install docco@0.8
rm -fr tantivy
#git clone git@github.com:tantivy-search/tantivy.git
git clone /home/paul/git/tantivy
cd tantivy/examples
for example in $(ls *.rs)
do
    docco $example -o "../../html"
done
cd ${DIR}
rm -fr ../examples
cp -R html ../examples

# building the mdbook
cd tantivy/doc
mdbook build
cd ${DIR}
rm -fr ../book
cp -R tantivy/doc/book ../book
