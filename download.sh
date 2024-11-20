#!/bin/bash

FILE_ID="10tzxvMO7i38iwc40GjAXKfhzh74sbGLM"
FILE_NAME="MPCN_Modul3.zip"

# Fetch the confirmation token and download the file
wget --save-cookies cookies.txt 'https://docs.google.com/uc?export=download&id='"$FILE_ID" -O- \
    | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' \
    | xargs -I{} wget --load-cookies cookies.txt 'https://docs.google.com/uc?export=download&confirm={}&id='"$FILE_ID" -O "$FILE_NAME"

# Clean up
rm cookies.txt
