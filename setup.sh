#!/bin/sh

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
mkdir ~/.config

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
