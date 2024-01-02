#!/bin/sh

# install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install tools
# brew install k9s nvim

rm -rf ~/.config/nvim
rm ~/.alacritty.yml
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s $(PWD)/nvim ~/.config/nvim
ln -s $(PWD)/alacritty.toml ~/.alacritty.toml
ln -s $(PWD)/tmux/.tmux.conf ~/.tmux.conf
ln -s $(PWD)/tmux.conf.local ~/.tmux.conf.local
