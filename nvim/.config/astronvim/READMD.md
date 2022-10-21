# NeoVim Configuration

Put the config files in place.

```sh
stow -d ~/.dotfiles nvim
```

## Install for Mac

```sh
brew install neovim

# install astronvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync

# for telescope
brew install fd
brew install ripgrep
```
