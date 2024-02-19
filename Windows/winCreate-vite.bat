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

set /p project_folder_name="Enter the name of your React project folder: "

mkdir "%project_folder_name%"

cd "%project_folder_name%"

npm create vite@latest "%project_folder_name%"

cd "%project_folder_name%"

npm install
npm install axios yup react-router-dom formik
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
code .
npm run dev
