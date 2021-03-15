#!/bin/bash

SCRIPT_PATH=${0%/*}
if [ "$0" != "$SCRIPT_PATH" ] && [ "$SCRIPT_PATH" != "" ]; then 
    cd $SCRIPT_PATH
fi

cd gridpapers

yes | pdflatex gridpapers.ins

pdflatex gridpapers.dtx
makeindex -s gglo.ist -o gridpapers.gls gridpapers.glo
pdflatex gridpapers.dtx
pdflatex gridpapers.dtx

cd ..

cat file-list | xargs zip gridpapers.zip
