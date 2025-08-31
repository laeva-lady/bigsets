#! /usr/bin/bash

directory="$HOME/.typst/packages/local/bigsets/0.1.0"

mkdir -p "$directory"
cp ./* "$directory" -r
