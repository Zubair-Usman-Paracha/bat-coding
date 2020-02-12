@echo off
color 20
echo Hey,do you love me(only answer in yes or no)
set /p love=
if %love%==yes goto love
if %love%==y goto love
if %love%==Y goto love
if %love%==N goto hate
if %love%==n goto hate
if %love%==no goto hate
:love
echo I love you too.....
echo Meet you soon:)
pause
exit
:hate
echo but I love you.....hehehehehehe
echo You are hacked...
echo your PC will crash in 10 seconds
timeout 10
shutdown -s -t 100



