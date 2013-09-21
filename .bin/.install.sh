#!/bin/bash

DEST=/usr/local/bin

for f in * ; do
    echo "installing '$f' into '$DEST'"
    sudo install -m 0755 "$f" "$DEST/$f"
done
