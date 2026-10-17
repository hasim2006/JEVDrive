@echo off
cd /d "%~dp0"
if exist ".venv\Scripts\driving-jev.exe" (
    ".venv\Scripts\driving-jev.exe" --policy heuristic %*
) else if exist "driving-jev-master\.venv\Scripts\driving-jev.exe" (
    "driving-jev-master\.venv\Scripts\driving-jev.exe" --policy heuristic %*
) else (
    python -m driving_jev.app --policy heuristic %*
)
if errorlevel 1 pause
