#!/usr/bin/env bash

echo "----------------------------------------
Creating XBT File..."

echo ".svn
Thumbs.db
Desktop.ini
dsstdfx.bin
build.bat
build.sh
/skin.estuary-japanese/media/
/skin.estuary-japanese/themes/
exclude.txt" > exclude.txt

TexturePacker -dupecheck -input media -output media/Textures.xbt
TexturePacker -dupecheck -input themes/curial -output media/curial.xbt
TexturePacker -dupecheck -input themes/flat -output media/flat.xbt

rm exclude.txt
