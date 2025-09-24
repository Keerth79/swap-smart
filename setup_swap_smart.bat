@echo off
REM Swap Smart Full Setup

echo Creating project folders...
mkdir C:\Users\divya\OneDrive\Desktop\swap_smart\backend
mkdir C:\Users\divya\OneDrive\Desktop\swap_smart\frontend

REM Setup Backend
echo Initializing backend...
cd C:\Users\divya\OneDrive\Desktop\swap_smart\backend
npm init -y
npm install express mongoose dotenv cors

echo Creating app.js...
(
echo const express = require('express');
echo const cors = require('cors');
echo const dotenv = require('dotenv');
echo dotenv.config();
echo const app = express();
echo app.use(cors());
echo app.use(express.json());
echo const PORT = process.env.PORT || 5000;
echo app.get('/', (req, res) => res.send('Swap Smart Backend Running'));
echo app.listen(PORT, () => console.log('Server running on port ' + PORT));
) > app.js

REM Setup Frontend
echo Initializing frontend...
cd C:\Users\divya\OneDrive\Desktop\swap_smart\frontend
npx create-react-app .

echo Setup complete!
echo To run backend: cd backend && node app.js
echo To run frontend: cd frontend && npm start
pause
