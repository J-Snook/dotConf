#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

echo "Running setup, please enter sudo password"

sudo -v

sudo pacman -S --needed --noconfirm reflector fzf ttf-jetbrains-mono-nerd z zsh-autosuggestions zsh-syntax-highlighting

sudo cp "$SCRIPT_DIR/scripts/crons/systemd/"* /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now update-mirrors.timer


# Configure ZSH
echo "Creating symlink for .zshenv..."
ln -sf "$SCRIPT_DIR/zsh/.zshenv-bootstrap" "$HOME/.zshenv"
echo "Done. Please restart your shell."
