@echo off
for /f "tokens=4" %%a in ('netsh interface show interface ^| findstr /C:"Connected"') do set "interface=%%a"
netsh interface set interface %interface% admin=disable