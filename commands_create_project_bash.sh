#!/bin/bash

repo_name=$1
url_to_clone=$2
project_type=$3

# git clone $url_to_clone
mkdir $repo_name
cd $repo_name
touch README.md

echo "#$repo_name" > README.md

if [ "$project_type" = "js" ]; then
    touch index.html style.css index.js
elif [ "$project_type" = "html-css" ]; then
    touch index.html style.css
else
    touch main.py
fi

code .
