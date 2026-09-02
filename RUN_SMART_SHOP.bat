@echo off
title Smart Shop AI
cd /d "%~dp0"
echo ==============================================
echo              SMART SHOP AI
echo ==============================================
where python >nul 2>&1
if errorlevel 1 (
  echo Python is not installed or not on PATH.
  pause
  exit /b 1
)
if not exist ".venv\Scripts\python.exe" (
  echo Creating virtual environment...
  python -m venv .venv
)
call ".venv\Scripts\activate.bat"
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
cd web
python app.py
pause
