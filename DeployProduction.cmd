rem @echo off
set targetdir=.\WebViewer
set keepdir=data
set keepfile=build.txt

FOR /F "eol=| delims=" %%I IN ('DIR "WebViewerArtifact\*.zip" /A-D /B /O-D /TW 2^>nul') DO SET "NewestFile=%%I" & GOTO FoundFile
ECHO No *.jpg file found!
GOTO :EOF

:FoundFile
echo %NewestFile%

for /F "tokens=*" %%A in  (%targetdir%\%keepfile%) do  (
    ECHO %%A 
    IF /i "%%A"== "%NewestFile%" GOTO EXIT_SCRIPT
)

echo %NewestFile% > %targetdir%\%keepfile%

rem kill current running apps
rem taskkill /F /FI "WINDOWTITLE eq WEBVIEWER SERVER*" /T
rem taskkill /F /FI "WINDOWTITLE eq WEBVIEWER CLIENT*" /T

rem delete file exist in the current folder
FOR %%a IN ("%targetdir%\*") DO IF /i NOT "%%~nxa"=="%keepfile%" DEL "%%a"
FOR /d %%a IN ("%targetdir%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"

rem unzip file
tar -xf WebViewerArtifact\%NewestFile% -C .\WebViewer\

rem install and start new production version
rem cd ./WebViewer && pnpm i --prod --ignore-scripts && cd ./scripts && startBuildVer.cmd pnpm i node-gyp &&
rem cd ./WebViewer && pnpm i --ignore-scripts && pnpm rebuild && cd ./scripts && startBuildVer.cmd


:EXIT_SCRIPT
exit /b 1
