#!/bin/bash

npm install docco@0.8
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
echo $DIR
cd ${DIR}
rm -fr tantivy
 git clone git@github.com:tantivy-search/tantivy.git
cd tantivy/examples
for example in $(ls *.rs)
do
    docco $example -o "../../html"
done
cd ${DIR}
