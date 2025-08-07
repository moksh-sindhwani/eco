@echo off
echo 🌱 Setting up EcoFootprint GitHub Repository...

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first:
    echo    Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ Git found! Continuing setup...

REM Navigate to script directory
cd /d "%~dp0"

REM Initialize git repository
echo 📁 Initializing Git repository...
git init

REM Prompt for user details
echo 👤 Please enter your GitHub details:
set /p user_name="Your Name: "
set /p user_email="Your Email: "
set /p github_username="Your GitHub Username: "

REM Configure git
git config --global user.name "%user_name%"
git config --global user.email "%user_email%"

echo 📝 Git configured with your details

REM Add all files
echo 📦 Adding all files to repository...
git add .

REM Create initial commit
echo 💾 Creating initial commit...
git commit -m "🎉 Initial commit: Complete EcoFootprint platform

✨ Features included:
- Earth-to-ECO animation with GSAP
- AI-powered authentication system  
- Carbon footprint tracker with EcoRewards
- Society registration and competition dashboard
- Educational eco library with 8+ guides
- Government programs database (25+ programs)
- Fully responsive design
- Modern glassmorphism UI

🌱 Made with love for a sustainable future!"

REM Add remote origin
echo 🔗 Adding GitHub remote...
git remote add origin "https://github.com/%github_username%/ecofootprint.git"

REM Set main branch
git branch -M main

echo.
echo 🚀 Setup complete! Now run:
echo    git push -u origin main
echo.
echo 📝 Don't forget to:
echo    1. Create the repository on GitHub first
echo    2. Enable GitHub Pages in repository settings
echo    3. Add repository topics and description
echo.
echo 🌐 Your site will be live at:
echo    https://%github_username%.github.io/ecofootprint
echo.
echo 🎉 Happy coding for the environment! 🌍💚

pause
