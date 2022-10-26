# Setup

```sh
# Put the config files in place.
git clone https://github.com/awyl/dotfiles ~/.dotfiles

# Install gnu stow
brew install stow

```

## Kitty

```sh
brew install kitty
brew install font-jetbrains-mono-nerd-font

stow -d ~/.dotfiles kitty
```

## Neovim

```sh
brew install neovim

stow -d ~/.dotfiles nvim

# install astronvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync

# for telescope
brew install fd
brew install ripgrep
```
