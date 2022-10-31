# basic about Batch Script

## comment batch script
```batch
REM This is comment
echo "hello world"
```
another way to make comment
```batch
::===============================================================
:: The below example for comment in different ways
::
::===============================================================
```
## copy folder
```batch
xcopy "[url source]" "[url destination]"/E 
```

## copy file
```batch 
copy "[url source]" "[url destination]"
```

## Move folder
```batch 
move "[url source]" "[url destination]"
```
## Variables
```batch
set myVariable=myVariable;

set /A variable-name=value
```
where:
- variable-name is the name of the variable you want to set.
- value is the value which needs to be set against the variable.
- /A – This switch is used if the value needs to be numeric in nature.

```batch
@echo off 
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c%
```
## make directory
```batch
mkdir url\myfolder
```

## check directory exist or not before create
```batch
if not exist "url\myfolder" mkdir url\myfolder
```

## initial list
```batch
set urlList=(%url1% %url2% %url3% %url4% %url5%)
```

## for loop
```batch
for %%i in %urlList% do [...]
```

## Command Line Arguments
The arguments can be called from the batch files through the variables %1, %2, %3, and so on.
```batch
@echo off 
echo %1 
echo %2 
echo %3
```

then you can use this batch script in command prompt ```Test.bat 1 2 3```

## start cmd process
```batch
start "Test01" cmd.exe @cmd /k "TITLE Test01"
:: kill the process you want, e.g. Test01
taskkill /F /FI "WINDOWTITLE eq Test01" /T
:: kill a process which has a SPACE in its name, e.g. cmd 006
taskkill /F /FI "WINDOWTITLE eq Test 01" /T
```
