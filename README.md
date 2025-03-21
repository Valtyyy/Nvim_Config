# Installation
## In Shell
Install config via the installer script

    wget -O - https://github.com/Valtyyy/Nvim_Config/blob/main/install.h | bash
## In Neovim
Install the plugins

    :PlugInstall

Check if are LSP installed

    :Mason

# Features

## Shortcuts
 - **Space + F + D** Open file searcher
 - **F3** Open terminal
 - *On terminal* **ESC** Close terminal
 - **F2** Toggle file tree
 - **CTRL + →** go to  next tab
 - **CTRL + ←** go to previous tab
 - **CTRL + C** close tab
 - **CTRL + P** pin tab
 - **CTRL + S** save current file *(buffer scope)*
 - *On autocomplete* **TAB** go next autocomplete suggestion
 - *On autocomplete* **Enter** confirm autocomplete suggestion
 - *On autocomplete* **CTRL + E** close autocomplete

## Utils
> Lsp are managed by Mason, go in *./lua/lsp.lua* and add your lsp server in *ensure_installed* list
