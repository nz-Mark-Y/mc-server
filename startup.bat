@ECHO OFF

curl ooksei.pythonanywhere.com/get_mc_host/ | findstr "0.0.0.0"

IF ERRORLEVEL 1 curl ooksei.pythonanywhere.com/get_mc_host/ && ECHO. && pause && GOTO:EOF

FOR /f %%A IN (
  'powershell -command "(Invoke-Webrequest "http://api.ipify.org").content"'
) DO SET ExtIP=%%A

curl ooksei.pythonanywhere.com/set_mc_host/%ExtIP%/ && ECHO.

git fetch origin master
git reset --hard FETCH_HEAD

cd server 
java -Xms1024M -Xmx1024M -jar server.jar nogui
pause

cd ..
git add -A
git commit -m "New run by %USERNAME%"
git push --set-upstream origin master --force

curl ooksei.pythonanywhere.com/set_mc_host/0.0.0.0/
