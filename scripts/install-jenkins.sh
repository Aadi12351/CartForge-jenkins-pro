#!/bin/bash

# CartForge Jenkins Installation Script

set -e

echo "Updating system packages..."
sudo apt update
sudo apt upgrade -y

echo "Installing Java..."
sudo apt install -y fontconfig openjdk-21-jre

echo "Installing Jenkins..."
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install -y jenkins

echo "Starting Jenkins..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "Installing Git..."
sudo apt install -y git

echo "Installing Node.js and npm..."
sudo apt install -y nodejs npm

echo "Checking installations..."
java -version
jenkins --version
git --version
node --version
npm --version

echo "Jenkins installation completed successfully."
