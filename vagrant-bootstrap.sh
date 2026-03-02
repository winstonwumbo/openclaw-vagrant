#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install build-essential procps curl file git -y
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vagrant/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Node version manager
brew install mise
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
eval "$(mise activate bash)"
mise use -g node@24

mise exec node@24 -- npm install -g openclaw@latest
# Manually run 'openclaw onboard --install-daemon' after