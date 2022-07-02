#!/bin/bash
set -eo pipefail

CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="home"
LOCAL_CONFIG="config"

function backup_dotfiles {
    mkdir -p $LOCAL_CONFIG
    mkdir -p $DOTFILES_DIR
    cp -rv "/etc/modprobe.d" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/qutebrowser" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/i3" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/nvim" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/alacritty" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/rofi" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/polybar" $LOCAL_CONFIG
    cp -rv "$CONFIG_DIR/picom.conf" $LOCAL_CONFIG
    cp -rv "$HOME/.zshrc" $DOTFILES_DIR
    cp -rv "$HOME/.zsh" $DOTFILES_DIR
    cp -rv "$HOME/.tmux.conf" $DOTFILES_DIR
    cp -rv "$HOME/.clang-format" $DOTFILES_DIR
}

backup_dotfiles
