
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
<<<<<<< HEAD
echo Download start.bat
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/start.bat"  > start.bat
echo Downloading config.bat
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/config.bat" > config.bat
echo Downloading update.bat
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/update.bat" > updata.bat
echo Downloading Core file
cd Core
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/yt-dlp.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffmpeg.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffplay.exe"
curl -L -O -# "https://raw.githubusercontent.com/%rep_user%/%rep_name%/master/Core/ffprobe.exe"

::moved
echo Adapting update...
echo update.bat > ignorelist
xcopy /S /E /F /Q /G /R /K /Y /V .\tmp\%rep_name%-master\* %~dp0 /EXCLUDE:ignorelist

::filedelete
echo Deleting temporary files
del master.zip
del ignorelist
rmdir /s /q tmp\

echo Updating yt-dlp
cd Core
yt-dlp -U

echo -------------------------------------
echo  Successful update!
echo -------------------------------------
pause