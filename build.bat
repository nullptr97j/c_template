@echo off
echo Configuring CMake project...

:: Create build directory and configure with MinGW
cmake -S . -B build -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug

if %errorlevel% neq 0 (
    echo Configuration failed!
    exit /b %errorlevel%
)

echo Building project...
cmake --build build --config Debug

if %errorlevel% neq 0 (
    echo Build failed!
    exit /b %errorlevel%
)

echo Build successful!