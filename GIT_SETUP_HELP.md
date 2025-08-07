# 🔧 Git Setup Troubleshooting Guide

## Problem: Git command not found

### Solution 1: Restart Your System
1. **Close VS Code completely**
2. **Restart your computer**
3. **Open a new Command Prompt or PowerShell**
4. **Try:** `git --version`

### Solution 2: Manually Add Git to PATH
1. **Find Git Installation Directory:**
   - Usually: `C:\Program Files\Git\bin`
   - Or: `C:\Program Files (x86)\Git\bin`

2. **Add to PATH:**
   - Press `Win + R`, type `sysdm.cpl`, press Enter
   - Click "Environment Variables"
   - Under "System Variables", find "Path"
   - Click "Edit" → "New"
   - Add the Git bin directory path
   - Click "OK" on all dialogs
   - Restart computer

### Solution 3: Use Git Bash Instead
1. **Right-click** in your project folder
2. **Select "Git Bash Here"**
3. **Run commands in Git Bash instead of PowerShell**

### Solution 4: Reinstall Git
1. **Download Git again** from: https://git-scm.com/download/win
2. **During installation, ensure:**
   - ✅ "Git from the command line and also from 3rd-party software"
   - ✅ "Use Git and optional Unix tools from the Command Prompt"
3. **Restart computer after installation**

## Manual Setup Commands (Copy-Paste Ready)

After Git is working, copy and paste these commands one by one:

```bash
# Navigate to project
cd "c:\Users\MOKSH SINDHWANI\Downloads\KIIT"

# Verify Git
git --version

# Configure Git (REPLACE WITH YOUR INFO)
git config --global user.name "Your Full Name"
git config --global user.email "your.email@gmail.com"

# Initialize repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "🎉 Initial commit: Complete EcoFootprint platform with all features"

# Add remote (REPLACE YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/ecofootprint.git

# Set main branch and push
git branch -M main
git push -u origin main
```

## GitHub Repository Settings

After pushing to GitHub:

### Enable GitHub Pages:
1. Go to repository → Settings → Pages
2. Source: "Deploy from a branch"
3. Branch: "main"
4. Folder: "/ (root)"
5. Save

### Add Repository Topics:
1. Go to repository main page
2. Click gear icon next to "About"
3. Add topics: `environment`, `sustainability`, `carbon-footprint`, `javascript`, `html5`, `css3`

### Your Live Site:
- URL: `https://YOUR_USERNAME.github.io/ecofootprint`
- Usually live within 5-10 minutes

## Quick Verification

To verify everything worked:
1. Visit your GitHub repository page
2. Check that all files are uploaded
3. Visit your GitHub Pages URL
4. See your EcoFootprint site live!

## Need Help?

If you're still having issues:
1. Try using Git Bash instead of PowerShell
2. Make sure you created the GitHub repository online first
3. Double-check your GitHub username in the remote URL
4. Ensure you have internet connection for the push

Happy coding! 🌱
