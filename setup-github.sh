#!/bin/bash
# EcoFootprint GitHub Setup Script
# Run this after installing Git

echo "🌱 Setting up EcoFootprint GitHub Repository..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   Download from: https://git-scm.com/download/win"
    exit 1
fi                                                                                          

echo "✅ Git found! Continuing setup..."

# Navigate to project directory
cd "$(dirname "$0")"

# Initialize git repository
echo "📁 Initializing Git repository..."
git init

# Prompt for user details
echo "👤 Please enter your GitHub details:"
read -p "Your Name: " user_name
read -p "Your Email: " user_email
read -p "Your GitHub Username: " github_username

# Configure git
git config --global user.name "$user_name"
git config --global user.email "$user_email"

echo "📝 Git configured with your details"

# Add all files
echo "📦 Adding all files to repository..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
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

# Add remote origin
echo "🔗 Adding GitHub remote..."
git remote add origin "https://github.com/$github_username/ecofootprint.git"

# Set main branch
git branch -M main

echo "🚀 Setup complete! Now run:"
echo "   git push -u origin main"
echo ""
echo "📝 Don't forget to:"
echo "   1. Create the repository on GitHub first"
echo "   2. Enable GitHub Pages in repository settings"
echo "   3. Add repository topics and description"
echo ""
echo "🌐 Your site will be live at:"
echo "   https://$github_username.github.io/ecofootprint"

echo ""
echo "🎉 Happy coding for the environment! 🌍💚"
