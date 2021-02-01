# Dotfile Collection

My collection of personal dotfiles.

## Installation

Clone into `${HOME}/.dotfiles`

## nvim

1. Install `neovim` via package manager.
2. Install [`vim-plug`](https://github.com/junegunn/vim-plug).
3. Alias `init.vim` to config folder.

### MacOS/Linux
```
mkdir "${HOME}"/.config/nvim

ln -s "${HOME}"/init.vim "${HOME}"/config/nvim/init.vim
```

4. Run `:PlugInstall` in nvim