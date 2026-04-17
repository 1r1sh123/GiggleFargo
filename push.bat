@echo off
title GiggleFargo — Push to GitHub
color 0A

echo.
echo  ╔══════════════════════════════════════╗
echo  ║     GiggleFargo — GitHub Push        ║
echo  ╚══════════════════════════════════════╝
echo.

cd /d "%~dp0"

git add -A

set /p msg=Commit message (or press Enter for default): 
if "%msg%"=="" set msg=Update GiggleFargo

git commit -m "%msg%"
git push origin main

echo.
echo  ✅ Done! Site updates in ~30 seconds.
echo  🌐 https://1r1sh123.github.io/GiggleFargo/
echo.
pause
