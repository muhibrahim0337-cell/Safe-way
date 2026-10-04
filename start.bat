@echo off
cd /d "%~dp0"
echo Safe Way backend starting on http://127.0.0.1:8090
echo Admin panel: http://127.0.0.1:8090/_/  (admin@safeway.app / SafeWay#2026)
pocketbase.exe serve --http=0.0.0.0:8090
pause
