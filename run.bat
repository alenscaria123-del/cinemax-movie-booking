@echo off
setlocal
title CINEMAX Launcher
cd /d "%~dp0"
if not exist "lib" mkdir lib
if not exist "lib\sqlite-jdbc.jar" (
  echo Downloading SQLite JDBC driver for first launch...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.50.3.0/sqlite-jdbc-3.50.3.0.jar' -OutFile 'lib\sqlite-jdbc.jar' } catch { Write-Host 'Download failed. Check internet and run run.bat again.' -ForegroundColor Red; exit 1 }"
  if not exist "lib\sqlite-jdbc.jar" pause & exit /b 1
)
if not exist "target" mkdir target
echo ================================
echo       CINEMAX LAUNCHER
echo ================================
echo Compiling Cinemax...
javac -encoding UTF-8 -cp "lib\sqlite-jdbc.jar" -d target src\Cinemax.java
if errorlevel 1 (
  echo Compile failed. Check that JDK 17 or newer is installed.
  pause
  exit /b 1
)
if not exist "data" mkdir data
echo Starting Cinemax...
java -cp "target;lib\sqlite-jdbc.jar" Cinemax
echo.
echo Cinemax closed.
pause
