@echo off
title EcoFootprint GitHub Setup
color 0A

echo.
echo ===============================================
echo  🌱 EcoFootprint GitHub Repository Setup
echo ===============================================
echo.

REM Check if git is available
echo ⚡ Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ❌ Git is not available in your PATH!
    echo.
    echo 🔧 Please try one of these solutions:
    echo    1. Restart your computer and try again
    echo    2. Reinstall Git from https://git-scm.com/download/win
    echo    3. Use Git Bash instead of Command Prompt
    echo    4. Check the GIT_SETUP_HELP.md file for detailed instructions
    echo.
    pause
    exit /b 1
)

echo ✅ Git found! Version:
git --version
echo.

REM Get user information
echo 👤 Please enter your information:
echo.
set /p user_name="Your Full Name: "
set /p user_email="Your Email Address: "
set /p github_username="Your GitHub Username: "
echo.

REM Validate inputs
if "%user_name%"=="" (
    echo ❌ Name cannot be empty!
    pause
    exit /b 1
)
if "%user_email%"=="" (
    echo ❌ Email cannot be empty!
    pause
    exit /b 1
)
if "%github_username%"=="" (
    echo ❌ GitHub username cannot be empty!
    pause
    exit /b 1
)

echo 📝 Setting up repository with:
echo    Name: %user_name%
echo    Email: %user_email%
echo    GitHub: %github_username%
echo.

REM Configure Git
echo ⚙️ Configuring Git...
git config --global user.name "%user_name%"
git config --global user.email "%user_email%"
echo ✅ Git configured successfully!
echo.

REM Initialize repository
echo 📁 Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo ❌ Failed to initialize repository!
    pause
    exit /b 1
)
echo ✅ Repository initialized!
echo.

REM Add all files
echo 📦 Adding all files to repository...
git add .
if %errorlevel% neq 0 (
    echo ❌ Failed to add files!
    pause
    exit /b 1
)
echo ✅ All files added!
echo.

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

if %errorlevel% neq 0 (
    echo ❌ Failed to create commit!
    pause
    exit /b 1
)
echo ✅ Initial commit created!
echo.

REM Add remote origin
echo 🔗 Adding GitHub remote...
git remote add origin https://github.com/%github_username%/ecofootprint.git
if %errorlevel% neq 0 (
    echo ❌ Failed to add remote! Make sure you created the repository on GitHub first.
    pause
    exit /b 1
)
echo ✅ Remote added successfully!
echo.

REM Set main branch
echo 🌿 Setting main branch...
git branch -M main
echo ✅ Main branch set!
echo.

echo ===============================================
echo  🚀 Ready to Push to GitHub!
echo ===============================================
echo.
echo ⚠️  IMPORTANT: Make sure you have created the repository
echo    'ecofootprint' on GitHub.com first!
echo.
echo 🌐 Repository URL: https://github.com/%github_username%/ecofootprint
echo.
echo Press any key to push to GitHub...
pause

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ===============================================
    echo  🎉 SUCCESS! Repository created successfully!
    echo ===============================================
    echo.
    echo 🌐 Your repository: https://github.com/%github_username%/ecofootprint
    echo 📱 GitHub Pages will be available at:
    echo    https://%github_username%.github.io/ecofootprint
    echo.
    echo 📝 Next steps:
    echo    1. Go to your repository on GitHub
    echo    2. Go to Settings → Pages
    echo    3. Set source to 'Deploy from a branch: main'
    echo    4. Your site will be live in 5-10 minutes!
    echo.
    echo 🌱 Thank you for choosing EcoFootprint!
) else (
    echo.
    echo ❌ Failed to push to GitHub!
    echo.
    echo 🔧 Possible issues:
    echo    1. Repository doesn't exist on GitHub
    echo    2. Wrong GitHub username
    echo    3. Network connection issues
    echo    4. Authentication required
    echo.
    echo 💡 Try visiting: https://github.com/%github_username%/ecofootprint
    echo    to verify the repository exists.
)

echo.
pause
