@echo off
title AI Sign Language Backend Setup

echo Backend Setup
echo.

py -3.10 --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python 3.10 is not installed.
    echo Please install Python 3.10 and try again.
    pause
    exit /b 1
)

if not exist venv_backend\Scripts\python.exe (
    echo [1/4] Creating virtual environment...
    py -3.10 -m venv venv_backend
    if errorlevel 1 goto error
) else (
    echo [1/4] Virtual environment already exists.
)

echo.
echo [2/4] Upgrading pip, setuptools and wheel...
venv_backend\Scripts\python.exe -m pip install --upgrade pip setuptools wheel
if errorlevel 1 goto error

echo.
echo [3/4] Installing requirements...
venv_backend\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 goto error

echo.
echo [4/4] Setup completed successfully!
echo.
echo To activate the environment, run:
echo   venv_backend\Scripts\activate
echo.
echo To start your backend, run:
echo   venv_backend\Scripts\python.exe main.py
echo.
pause
exit /b 0

:error
echo.
echo ERROR: Setup failed. Review the error messages above.
pause
exit /b 1