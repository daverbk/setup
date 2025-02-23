#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set ZSH theme and plugins
ZSHRC=~/.zshrc
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode

# Update .zshrc
sed -i '' 's/ZSH_THEME="[^"]*"/ZSH_THEME="crunch"/' $ZSHRC
sed -i '' '/^plugins=/c\
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vi-mode)' $ZSHRC

# Install pinentry-mac and gnupg
brew install pinentry-mac gnupg

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

# Source .zshrc
source $ZSHRC