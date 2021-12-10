copy %CD%\progs_folder\progs.dat "c:\Users\%USERNAME%\Saved Games\Nightdive Studios\Quake\mpmod"\progs.dat
copy %CD%\progs_folder\progs.dat "c:\Users\%USERNAME%\Saved Games\Nightdive Studios\Quake\Id1"\progs.dat

rem remove old build products
del /f %CD%\progs_folder\pak0.pak
del /f %CD%\progs_folder\my_mod.zip

python ../../pakMaker.py progs_folder/ ./progs_folder/pak0.pak
powershell "Compress-Archive ./progs_folder/pak0.pak ./progs_folder/my_mod.zip"
timeout /T 2
"c:\Program Files (x86)\Steam\steamapps\common\Quake\rerelease\Quake_x64_steam.exe" -game mpmod
pause