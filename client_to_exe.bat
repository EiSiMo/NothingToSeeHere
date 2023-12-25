@echo off
pyinstaller -F --clean troll1.py -w
copy dist\troll1.exe troll1.exe
@RD /S /Q dist
@RD /S /Q build