source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle fdellwing/zsh-bat
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zpm-zsh/ls
antigen bundle zshzoo/cd-ls@main

# Load Powerlevel10k theme
antigen theme lambda

# Apply antigen
antigen apply
