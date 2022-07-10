
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
echo Download lastetst version
curl -L -O -# "https://github.com/%rep_user%/%rep_name%/archive/master.zip"

::Unzip
echo Extract .zip file...
powershell Expand-Archive -Path master.zip -DestinationPath tmp/ -Force

::moved
echo Checking...
echo update.bat > ignorelist
xcopy /S /E /F /Q /G /R /K /Y /V .\tmp\%rep_name%-master\* %~dp0 /EXCLUDE:ignorelist

::filedelete
echo finishing Update...
del master.zip
del ignorelist
rmdir /s /q tmp\

echo Update finish.
pause