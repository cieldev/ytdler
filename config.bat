@echo off

cd Config

for /f "tokens=* delims=" %%x in (DirToSave.txt) do set dir=%%x
set /p dir1="Select the folder where you want to download the file [%dir%]: "
echo.
IF [%dir1%] == [] goto Dirend

:dirset
echo %Dir1%>DirToSave.txt
:Dirend
echo.
goto MP

:MP
for /f "tokens=* delims=" %%x in (Mp3_OR_Mp4.txt) do set mp=%%x
if [%mp%] == [mp4] goto MP4
if [%mp%] == [Mp4] goto MP4
if [%mp%] == [mP4] goto MP4
if [%mp%] == [MP4] goto MP4
if [%mp%] == [video] goto MP4
if [%mp%] == [Video] goto MP4
if [%mp%] == [VIDEO] goto MP4
goto MP3

:MP4
set /p MP1=You can download video or audio files [VIDEO/audio]: 
echo.
IF [%mp1%] == [] goto MPend
if [%mp1%] == [mp4] goto MPset
if [%mp1%] == [Mp4] goto MPset
if [%mp1%] == [mP4] goto MPset
if [%mp1%] == [MP4] goto MPset
if [%mp1%] == [video] goto MPset
if [%mp1%] == [Video] goto MPset
if [%mp1%] == [VIDEO] goto MPset
if [%mp1%] == [mp3] goto MPset
if [%mp1%] == [Mp3] goto MPset
if [%mp1%] == [mP3] goto MPset
if [%mp1%] == [MP3] goto MPset
if [%mp1%] == [audio] goto MPset
if [%mp1%] == [Audio] goto MPset
if [%mp1%] == [AUDIO] goto MPset
goto ErrSetMP
:MP3
set /p MP1=You can download video or audio files [video/AUDIO]: 
echo.
IF [%mp1%] == [] goto MPend
if [%mp1%] == [mp4] goto MPset
if [%mp1%] == [Mp4] goto MPset
if [%mp1%] == [mP4] goto MPset
if [%mp1%] == [MP4] goto MPset
if [%mp1%] == [video] goto MPset
if [%mp1%] == [Video] goto MPset
if [%mp1%] == [VIDEO] goto MPset
if [%mp1%] == [mp3] goto MPset
if [%mp1%] == [Mp3] goto MPset
if [%mp1%] == [mP3] goto MPset
if [%mp1%] == [MP3] goto MPset
if [%mp1%] == [audio] goto MPset
if [%mp1%] == [Audio] goto MPset
if [%mp1%] == [AUDIO] goto MPset
goto ErrSetMP
:MPset
echo %mp1%> Mp3_OR_Mp4.txt

:MPend
echo.
echo.
goto end










:ErrSetDC
cls
echo You have entered an invalid option. Try again.
pause
cls
goto DC
:ErrSetMP
cls
echo You have entered an invalid option. Try again.
pause
cls
goto MP



:end
pause