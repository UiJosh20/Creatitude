@echo off

cd /d "%USERPROFILE%\Desktop"

if not %ERRORLEVEL% equ 0 (
    echo Error: Unable to access the desktop directory.
    pause
    exit /b
)

set /p project_folder_name="Enter the name of your React project folder: "
mkdir "%project_folder_name%"
cd "%project_folder_name%"
npm init -y
npm install express mongoose bcrypt cloudinary dotenv cors jsonwebtoken
code .
nodemon

