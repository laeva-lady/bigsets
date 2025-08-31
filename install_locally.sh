#! /usr/bin/bash

directory="$HOME/.local/share/typst/packages/local/bigsets/0.1.0"

mkdir -p "$directory"
rm "$directory"/* -f
cp ./* "$directory" -r
