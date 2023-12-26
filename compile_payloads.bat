@echo off
pyinstaller -F --clean troll.py -w
copy dist\troll.exe troll.exe
@RD /S /Q dist
@RD /S /Q build
del troll.spec

powershell -command "$bytes = [System.IO.File]::ReadAllBytes('troll.exe'); [Convert]::ToBase64String($bytes) | Out-File -FilePath 'troll.b64' -Encoding ASCII -NoNewline"
