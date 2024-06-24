#!/bin/zsh

if [ -d "$HOME/.oh-my-zsh" ]; then
  cp ./devcontainers.zsh-theme $HOME/.oh-my-zsh/themes/
  current_theme=$(sed -n 's/^ZSH_THEME="\([^"]*\)"/\1/p' ~/.zshrc)
  echo "Default theme '$current_theme' changed to 'devcontainers'"
  sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="devcontainers"/' ~/.zshrc
  zsh
else
  echo "Oh My Zsh theme folder could not be found."
fi
