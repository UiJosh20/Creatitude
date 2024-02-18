#!/usr/bin/bash
cd /home/joshua/Desktop/SQI_Class/Level_3/REACT

read -p "Enter the name of your React project folder: " project_folder_name

mkdir "$project_folder_name"

cd "$project_folder_name"

npm create vite@latest "$project_folder_name"

cd "$project_folder_name"

npm install
npm install axios yup react-router-dom formik
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
code .
npm run dev
