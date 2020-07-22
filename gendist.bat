@echo off

ROBOCOPY .\node_modules .\dist\node_modules *.node *.dll /S
move dist\node_modules\gl\build\Release dist\build
rd dist\node_modules\gl /s /q

call nexe cli.js
move cli.exe dist\generate.exe
copy package.json dist\
