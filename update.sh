#!/bin/bash

cd ~/.dotfiles

if [ -n "$ALACRITTY_FONT_SIZE" ]; then
    cat alacritty.yml | sed -e "s/size: [0-9]\+\.[0-9]\+$/size: $ALACRITTY_FONT_SIZE/" > ~/.alacritty.yml
else
    cp alacritty.yml ~/.alacritty.yml
fi

if [ ! -f ~/.bashrc ]; then
    ln -s "$PWD/bashrc" ~/.bashrc
fi

if [ ! -f ~/.bash_aliases ]; then
    ln -s "$PWD/bash_aliases" ~/.bash_aliases
fi

if [ ! -f ~/.dircolors ]; then
    ln -s "$PWD/dircolors" ~/.dircolors
fi

if [ ! -f ~/.gitconfig ]; then
    ln -s "$PWD/gitconfig" ~/.gitconfig
fi

if [ ! -f ~/.gitignore_global ]; then
    ln -s "$PWD/gitignore_global" ~/.gitignore_global
fi
