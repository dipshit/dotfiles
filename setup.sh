#!/bin/bash

# Setup ohmyzsh

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Setup vim-plug

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Varibles
backup=~/.dotfiles_backup
dir="$(pwd)"
dotfiles="
.tmux.conf
.zshrc
.gitconfig
.config/nvim
.config/alacritty
.config/tmux"

# Backup
mkdir -p $backup
echo "Backup dir: $backup"

# Setup config
mkdir -p ~/.config

for dotfile in $dotfiles; do
  # move backups
  [[ -h ~/$dotfile ]] && unlink ~/"$dotfile"
	if [[ -f ~/$dotfile ]]; then
    mv ~/"$dotfile" "$backup"/"$dotfile"
    echo "Current $dotfile moved to: $backup/$dotfile"
  fi

  # make symlinks
  if [[ -d $dotfile ]]; then
    ln -sF "$dir"/"$dotfile" ~/"$(dirname "$dotfile")"
  else
    ln -sF "$dir"/"$dotfile" ~/"$dotfile"
  fi
	echo "Symbloic link for ~/$dotfile"
done
