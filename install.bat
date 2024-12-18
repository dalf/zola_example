@echo off
setlocal

:: Set the URL and output file
set "URL=https://github.com/getzola/zola/releases/download/v0.19.2/zola-v0.19.2-x86_64-pc-windows-msvc.zip"
set "OUTPUT=zola.zip"

:: Download the file using curl
echo Downloading Zola...
curl -L -o "%OUTPUT%" "%URL%"
if errorlevel 1 (
    echo Failed to download Zola.
    exit /b 1
)

:: Extract the ZIP file
echo Extracting Zola...
powershell -Command "Expand-Archive -Path '%OUTPUT%' -DestinationPath '.' -Force"
if errorlevel 1 (
    echo Failed to extract Zola.
    exit /b 1
)

:: Remove the ZIP file
echo Cleaning up...
del "%OUTPUT%"
if errorlevel 1 (
    echo Failed to remove the ZIP file.
    exit /b 1
)

echo Zola installation completed successfully.
exit /b 0
