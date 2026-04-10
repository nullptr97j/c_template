@echo off
:: First build the project
call build.bat

if %errorlevel% neq 0 (
    echo Build failed, not running executable
    exit /b %errorlevel%
)

:: Run the executable (adjust name as needed)
echo Running executable...
echo ----------------------------------------------------
.\build\template.exe
echo ----------------------------------------------------

if %errorlevel% neq 0 (
    echo Program exited with error code %errorlevel%
) else (
    echo Program finished successfully
)