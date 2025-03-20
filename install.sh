
echo "Installing Plug manager"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Installing NerdFont"

curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.tar.xz
mkdir /usr/local/share/fonts/Monaspace/
mv Monospace.tar.xz /usr/local/share/fonts/Monaspace/
tar -xf /usr/local/share/fonts/Monaspace/Monospace.tar.xf
rm /usr/local/share/fonts/Monaspace/Monospace.tar.xf

echo "Install config"

git clone "git@github.com:Valtyyy/Nvim_Config.git" ~/.config/nvim/
