# basic about Batch Script

## comment batch script
```batch
REM This is comment
echo "hello world"
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



