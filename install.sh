#!/bin/bash

echo "Installing Plug manager"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Installing NerdFont (Monaspace)"
mkdir -p /tmp/nerdfonts
wget -O /tmp/nerdfonts/Monaspace.tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.tar.xz

mkdir -p ~/.local/share/fonts/Monaspace
tar -xf /tmp/nerdfonts/Monaspace.tar.xz -C ~/.local/share/fonts/Monaspace

fc-cache -fv

echo "Cloning Neovim config"
git clone "git@github.com:Valtyyy/Nvim_Config.git" ~/.config/nvim/
