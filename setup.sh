#!/usr/bin/env bash

DOTFILES_DIR=$(pwd)

ln -s ${DOTFILES_DIR}/.bash_aliases ~/
ln -s ${DOTFILES_DIR}/.bash_profile ~/
ln -s ${DOTFILES_DIR}/.bash_customization ~/
ln -s ${DOTFILES_DIR}/.bashrc ~/
ln -s ${DOTFILES_DIR}/.condarc ~/
ln -s ${DOTFILES_DIR}/.tmux.conf ~/
ln -s ${DOTFILES_DIR}/.vimrc ~/
ln -s ${DOTFILES_DIR}/.gitconfig ~/
