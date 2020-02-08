REM Set filename
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%

set TODAY=%CUR_YYYY%%CUR_MM%%CUR_DD%
set /p VERSION=<..\version.txt


REM Create release package
..\tools\7z.exe a -tzip loadrl-%VERSION%.zip ..\bin\*.* -r
..\tools\7z.exe d loadrl-%VERSION%.zip .gdignore
