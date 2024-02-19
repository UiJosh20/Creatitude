@echo off

dir "%USERPROFILE%\Desktop" > nul 2>&1
if not %ERRORLEVEL% equ 0 (
    echo Error: Desktop folder not found.
    pause
    exit /b
)

cd /d "%USERPROFILE%\Desktop"
if not %ERRORLEVEL% equ 0 (
    echo Error: Could not access the desired directory.
    pause
    exit /b
)


set /p project_folder_name="Enter the name of your Node.js project folder: "

mkdir "%project_folder_name%"

cd "%project_folder_name%"

npm init -y
npm install express mongoose cloudinary dotenv cors jsonwebtoken

echo. >> index.js
echo const express = require("express") >> index.js
echo const app = express() >> index.js
echo const PORT = 3000 >> index.js
echo. >> index.js
echo app.listen(PORT, () ^>^> { echo console.log(^"Server is running on host %PORT%^"); }) >> index.js

code .
nodemon

