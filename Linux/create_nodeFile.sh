#!/usr/bin/bash
cd /home/joshua/Desktop/SQI_Class/Level_3/NODE

read -p "Enter the name of your React project folder: " project_folder_name

mkdir "$project_folder_name"

cd "$project_folder_name"
npm init -y
npm install express mongoose  cloudinary dotenv cors jsonwebtoken
echo 'const express = require("express")' >> index.js
echo 'const app = express()' >> index.js
echo 'const PORT = 3000' >> index.js
echo '' >> index.js
echo 'app.listen(PORT, () => {' >> index.js
echo '  console.log(`Server is running on host ${PORT}`)' >> index.js
echo '})' >> index.js
code .
nodemon
