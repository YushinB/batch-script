ECHO off
FOR /F "eol=| delims=" %%I IN ('DIR "data\*.zip" /A-D /B /O-D /TW 2^>nul') DO SET "NewestFile=%%I" & GOTO FoundFile
ECHO No *.jpg file found!
GOTO :EOF

:FoundFile
tar -xf ./data/%NewestFile% -C ./test/
rem ECHO Newest *.zip file is: "%NewestFile%"