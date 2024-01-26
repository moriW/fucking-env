#!/bin/sh

git submodule update

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install tools
brew install k9s nvim tmux alacritty thefuck autojump

# font
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font

# oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf ~/.config/nvim
rm ~/.alacritty.toml
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s $(PWD)/nvim ~/.config/nvim
ln -s $(PWD)/zshrc ~/.zshrc
ln -s $(PWD)/alacritty.toml ~/.alacritty.toml
ln -s $(PWD)/tmux/.tmux.conf ~/.tmux.conf
ln -s $(PWD)/tmux.conf.local ~/.tmux.conf.local
