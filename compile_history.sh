#!/bin/bash

rm -rf hist/out/*
mkdir -p hist/out
git co master
cp Makefile hist/

git log --pretty=format:'%h %ci' | while read line; do
    hash=$(echo $line | cut -d' ' -f1);
    stamp=$(echo $line | cut -d' ' -f2-);
    echo hash=\'$hash\' stamp=\'$stamp\'
    git co $hash;
    cp -f Makefile *.cls *.tex hist;
    cd hist;
    make clean;
    make;
    cp resume.pdf "out/${stamp} (${hash}).pdf";
    cd ..;
done

