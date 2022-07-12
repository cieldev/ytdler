
@echo off
cd /d %~dp0
::repository user
set rep_user=cieldev
::repository name
set rep_name=ytdler
echo -------------------------------------
echo  %rep_name% update program
echo -------------------------------------
::Download
echo Download start.bat
curl -L -O -# https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/start.bat > start.bat
echo Downloading config.bat
curl -L -O -# https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/config.bat > config.bat
echo Downloading update.bat
curl -L -O -# https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/update.bat > update.bat
echo Downloading Core file

cd Core

curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/yt-dlp.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffmpeg.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffplay.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffprobe.exe"

echo Updating yt-dlp
cd Core
yt-dlp -U

echo -------------------------------------
echo  Successful update!
echo -------------------------------------
pause