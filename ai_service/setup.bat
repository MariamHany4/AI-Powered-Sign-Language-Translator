@echo off
title ASL Project Setup

echo   AI Service Setup
echo.

py -3.10 --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python 3.10 is not installed.
    echo Install Python 3.10 and try again.
    pause
    exit /b 1
)

if not exist venv_ai\Scripts\python.exe (
    echo [1/5] Creating virtual environment...
    py -3.10 -m venv venv_ai
    if errorlevel 1 goto error
) else (
    echo [1/5] Virtual environment already exists.
)

echo.
echo [2/5] Upgrading pip, setuptools and wheel...
venv_ai\Scripts\python.exe -m pip install --upgrade pip setuptools wheel
if errorlevel 1 goto error

echo.
echo [3/5] Installing requirements...
venv_ai\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 goto error

echo.
echo [4/5] Installing pip 24.0 for llama-cpp-python...
venv_ai\Scripts\python.exe -m pip install pip==24.0
if errorlevel 1 goto error

echo.
echo [5/5] Installing llama-cpp-python CPU version...
venv_ai\Scripts\python.exe -m pip install llama-cpp-python --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/cpu --prefer-binary
if errorlevel 1 goto error

echo.
echo Setup completed successfully!
echo.
echo To activate the environment, run:
echo   venv_ai\Scripts\activate
echo.
echo To start the backend, run:
echo   venv_ai\Scripts\python.exe main.py
echo.
pause
exit /b 0

:error
echo.
echo ERROR: Setup failed. Review the error messages above.
pause
exit /b 1