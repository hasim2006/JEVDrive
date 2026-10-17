@echo off
cd /d "%~dp0"
if exist ".venv\Scripts\driving-jev.exe" (
    ".venv\Scripts\driving-jev.exe" %*
) else if exist "driving-jev-master\.venv\Scripts\driving-jev.exe" (
    "driving-jev-master\.venv\Scripts\driving-jev.exe" %*
) else (
    python -m driving_jev.app %*
)
if errorlevel 1 pause
