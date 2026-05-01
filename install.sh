#!/bin/bash

DOTFILES="$(dirname "$0")"

echo "[bryce-dotfiles] Installing Homebrew..."  
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle --file="$DOTFILES/Brewfile"

echo "[bryce-dotfiles] Configuring zsh..."  
ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"

echo "[bryce-dotfiles] Configuring Ghostty..." 
mkdir -p "$HOME/.config/ghostty"
ln -sf "$DOTFILES/ghostty/config" "$HOME/.config/ghostty/config"

echo "[bryce-dotfiles] Configuring VSCode..." 
mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf "$DOTFILES/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
