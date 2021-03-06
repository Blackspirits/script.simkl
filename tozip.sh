#!/bin/bash
#Creates a zip file compatible with Kodi
date --rfc-3339=seconds > resources/data/compdate.txt

mkdir script.simkl
rm script.simkl.zip

rsync -rv --progress ./ ./script.simkl --exclude-from .gitignore --exclude tozip.sh
zip -rx@.gitignore script.simkl.zip script.simkl/* -x script.simkl/script.simkl/
rm -Rf script.simkl