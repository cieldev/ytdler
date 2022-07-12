@echo off
cd /d %~dp0
echo -------------------------------------
echo  ytdler update program
echo -------------------------------------
::Download
echo Download start.bat
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/start.bat"
echo Downloading config.bat
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/config.bat"
echo Downloading update.bat
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/update.bat"

echo Downloading Core file
cd Core
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/Core/yt-dlp.exe"
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/Core/ffmpeg.exe"
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/Core/ffplay.exe"
curl -L -O -# "https://raw.githubusercontent.com/cieldev/ytdler/master/Core/ffprobe.exe"

echo Updating yt-dlp
cd Core
yt-dlp -U

echo -------------------------------------
echo  Successful update!
echo -------------------------------------
pause