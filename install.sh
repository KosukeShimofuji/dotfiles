#!/bin/bash
git clone git@github.com:KosukeShimofuji/dotfiles.git /tmp/
mkdir -p ~/.vim{backup,bundle,colors,swap}
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/
cp /tmp/dotfiles/.bashrc ~/
cp /tmp/dotfiles/.vimrc ~/
cp /tmp/dotfiles/.tmux.conf ~/
