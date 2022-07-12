@echo off
cd /d %~dp0
echo -------------------------------------
echo  ytdler update program
echo -------------------------------------
::Download
echo Downloading lastest version...
curl -L -O -# "https://github.com/cieldev/ytdler/archive/master.zip"

::Unzip
echo Extract zip file...
powershell Expand-Archive -Path master.zip -DestinationPath tmp/ -Force

::moved
echo Rewriting file
echo update.bat > ignorelist
xcopy /S /E /F /Q /G /R /K /Y /V .\tmp\%rep_name%-master\* %~dp0 /EXCLUDE:ignorelist

::filedelete
echo 一時ファイルを削除します
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