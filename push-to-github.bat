@echo off
setlocal enabledelayedexpansion

:: 🚀 Git-Only GitHub Setup Script for Windows
:: Complete setup for EcoFootprint Platform repository

echo.
echo 🌱 EcoFootprint Platform - Git Repository Setup
echo ================================================
echo.

:: Check if we're in a git repository
if not exist ".git" (
    echo ❌ Error: Not in a Git repository!
    echo Run 'git init' first
    pause
    exit /b 1
)

:: Display current status
echo 📊 Current Repository Status:
git status --short
echo.

:: Show commit history
echo 📝 Commit History:
git log --oneline -5
echo.

:: Instructions for GitHub repository creation
echo 🌐 NEXT STEPS - Create GitHub Repository:
echo =========================================
echo.
echo 1. Go to: https://github.com/new
echo 2. Repository name: ecofootprint-platform
echo 3. Description: 🌱 Comprehensive environmental platform with PlantVerse game
echo 4. Set to Public ✅
echo 5. Do NOT initialize with README ❌
echo 6. Click 'Create repository'
echo.

:: Git commands to run after creating GitHub repo
echo 🔧 COMMANDS TO RUN AFTER CREATING GITHUB REPO:
echo ==============================================
echo.
echo # Add GitHub repository as remote origin
echo git remote add origin https://github.com/YOUR_USERNAME/ecofootprint-platform.git
echo.
echo # Rename main branch to 'main' (GitHub standard)
echo git branch -M main
echo.
echo # Push all commits to GitHub
echo git push -u origin main
echo.

echo 🎯 ALTERNATIVE: If you know your GitHub username:
echo ================================================
echo.
set /p username="Enter your GitHub username (or press Enter to skip): "

if not "!username!"=="" (
    echo.
    echo 📋 YOUR PERSONALIZED COMMANDS:
    echo ===============================
    echo.
    echo git remote add origin https://github.com/!username!/ecofootprint-platform.git
    echo git branch -M main
    echo git push -u origin main
    echo.
    
    set /p confirm="🚀 Run these commands now? (y/N): "
    
    if /i "!confirm!"=="y" (
        echo.
        echo 🔄 Adding remote repository...
        git remote add origin https://github.com/!username!/ecofootprint-platform.git
        
        echo 🔄 Renaming branch to main...
        git branch -M main
        
        echo 🔄 Pushing to GitHub...
        echo ⚠️  You'll need to authenticate with GitHub
        git push -u origin main
        
        if !errorlevel! equ 0 (
            echo.
            echo 🎉 SUCCESS! Repository pushed to GitHub!
            echo 🌐 Visit: https://github.com/!username!/ecofootprint-platform
            echo.
            echo 🔧 Enable GitHub Pages:
            echo 1. Go to repository Settings
            echo 2. Scroll to Pages section
            echo 3. Select 'Deploy from a branch'
            echo 4. Choose 'main' branch
            echo 5. Your site will be live at: https://!username!.github.io/ecofootprint-platform
        ) else (
            echo ❌ Push failed. Make sure:
            echo 1. GitHub repository exists
            echo 2. You have access permissions
            echo 3. Username is correct
        )
    )
) else (
    echo 👆 Follow the manual steps above to complete setup
)

echo.
echo 📁 Your repository contains:
echo ==========================
git ls-files
echo.

:: Count total files
for /f %%i in ('git ls-files ^| find /c /v ""') do set total_files=%%i
echo 📊 Total: !total_files! files committed
echo.
echo ✨ Your EcoFootprint platform is ready for the world! 🌍
echo.
pause
