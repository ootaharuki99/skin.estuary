@echo off
ECHO ----------------------------------------
echo Creating Estuary Build Folder
IF Exist %base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese rmdir %base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese /S /Q
md %base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese\media\

Echo .svn>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo build.bat>>exclude.txt
Echo \skin.estuary-japanese\media\>>exclude.txt
Echo \skin.estuary-japanese\themes\>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT File...
START /B /WAIT %base_dir%\Tools\TexturePacker\TexturePacker -dupecheck -input media -output %base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese\media\Textures.xbt
START /B /WAIT %base_dir%\Tools\TexturePacker\TexturePacker -dupecheck -input themes\curial -output %base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese\media\curial.xbt

ECHO ----------------------------------------
ECHO XBT Texture Files Created...
ECHO Building Skin Directory...
xcopy "..\skin.estuary-japanese" "%base_dir%\project\Win32BuildSetup\BUILD_WIN32\application\addons\skin.estuary-japanese" /E /Q /I /Y /EXCLUDE:exclude.txt

del exclude.txt
