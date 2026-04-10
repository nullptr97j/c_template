@echo off
title C Development Environment Installer
echo ========================================
echo   C Development Environment Setup
echo ========================================
echo.
echo This script will install:
echo   - Visual Studio Code
echo   - MinGW (GCC compiler)
echo   - CMake
echo.
echo Please wait...

:: Install Visual Studio Code
echo [1/3] Installing Visual Studio Code...
winget install -e --id Microsoft.VisualStudioCode --silent
if %errorlevel% equ 0 (
    echo   ✓ VS Code installed successfully
) else (
    echo   ✗ VS Code installation failed
)

:: Install MinGW (GCC compiler)
echo [2/3] Installing MinGW (GCC compiler)...
winget install -e --id GNUWin32.Make --silent
winget install -e --id GNUWin32.Grep --silent
if %errorlevel% equ 0 (
    echo   ✓ MinGW installed successfully
) else (
    echo   ✗ MinGW installation failed
)

:: Install CMake
echo [3/3] Installing CMake...
winget install -e --id Kitware.CMake --silent
if %errorlevel% equ 0 (
    echo   ✓ CMake installed successfully
) else (
    echo   ✗ CMake installation failed
)

:: Install VS Code C/C++ extension
echo.
echo Installing VS Code extensions...
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cmake-tools

echo.
echo ========================================
echo   Installation Complete!
echo ========================================
echo.
echo Please restart VS Code if it was open.
echo.
pause