@echo off
echo.
echo ============================================
echo    Chuying CRM - Starting
echo ============================================
echo.

node -v >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js not installed!
    echo Download: https://nodejs.org/dist/v20.18.0/node-v20.18.0-x64.msi
    start https://nodejs.org/dist/v20.18.0/node-v20.18.0-x64.msi
    pause
    exit /b 1
)
for /f "tokens=*" %%a in ('node -v') do set NODE_VER=%%a
echo [OK] Node.js %NODE_VER%
echo.

cd /d "%~dp0"

REM Install dependency (only @libsql/client, pure JavaScript, ~30 seconds)
if not exist "node_modules\@libsql\client" (
    echo [1/2] Installing database driver...
    echo    (Pure JavaScript, no compilation, ~30 seconds)
    echo.
    if not exist "package.json" (
        echo {"name":"chuying-crm","version":"1.0.0","private":true}>package.json
    )
    call npm install @libsql/client --no-save --legacy-peer-deps
    if not exist "node_modules\@libsql\client" (
        echo [ERROR] Install failed. Check network connection.
        pause
        exit /b 1
    )
    echo [OK] Installed!
) else (
    echo [1/2] Database driver ready
)
echo.

echo [2/2] Starting CRM server...
echo.
echo    URL: http://localhost:3000
echo    Account: admin@chuying.org
echo    Password: Cying@Admin2025
echo    Ctrl+C to stop
echo.

start "CRM Server" cmd /c "node boot.js"
timeout /t 3 /nobreak >nul
start http://localhost:3000

echo [OK] CRM opened in browser!
pause
