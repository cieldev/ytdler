@echo off

echo Check for updates 
echo.
cd system
yt-dlp -U
echo.
echo Successful update!
echo.
pause