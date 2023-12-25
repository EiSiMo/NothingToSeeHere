@echo off
pyinstaller -F --clean troll1.py -w
copy dist\troll1.exe troll1.exe
@RD /S /Q dist
@RD /S /Q build
del troll1.spec

pyinstaller -F --clean troll2.py -w
copy dist\troll2.exe troll2.exe
@RD /S /Q dist
@RD /S /Q build
del troll2.spec

powershell -command "$bytes = [System.IO.File]::ReadAllBytes('troll1.exe'); [Convert]::ToBase64String($bytes) | Out-File -FilePath 'troll1.b64' -Encoding ASCII -NoNewline"
powershell -command "$bytes = [System.IO.File]::ReadAllBytes('troll2.exe'); [Convert]::ToBase64String($bytes) | Out-File -FilePath 'troll2.b64' -Encoding ASCII -NoNewline"