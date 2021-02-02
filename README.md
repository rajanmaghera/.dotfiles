# Dotfile Collection

My collection of personal dotfiles.

## Installation

Clone into `${HOME}/.dotfiles`

## nvim

1. Install `neovim` and `node` via package manager.
2. Install [`vim-plug`](https://github.com/junegunn/vim-plug).
3. Alias `init.vim` to config folder.

### MacOS/Linux
```
mkdir "${HOME}"/.config/nvim

ln -s "${HOME}"/.dotfiles/init.vim "${HOME}"/config/nvim/init.vim
```

4. Install plug-ins
```
:PlugInstall
```

5. Install coc extentions
```
:CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright
```