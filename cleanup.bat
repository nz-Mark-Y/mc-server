@ECHO OFF

curl ooksei.pythonanywhere.com/get_mc_host/ | findstr "0.0.0.0"

IF ERRORLEVEL 1 curl ooksei.pythonanywhere.com/get_mc_host/ && ECHO. && pause && GOTO:EOF

FOR /f %%A IN (
  'powershell -command "(Invoke-Webrequest "http://api.ipify.org").content"'
) DO SET ExtIP=%%A

curl ooksei.pythonanywhere.com/set_mc_host/%ExtIP%/ && ECHO.

rmdir /S /Q .git

git init
git add .
git commit -m "Cleaned by %USERNAME%"

git remote add origin https://github.com/ooksei/mc-server.git
git push -u --force origin master

curl ooksei.pythonanywhere.com/set_mc_host/0.0.0.0/
