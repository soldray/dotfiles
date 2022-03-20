#!/bin/sh

function copy {
  if [ ! -d $2/$1 ]; then
    cp -rf $1 $2
  else
    echo "$2/$1 exists, aborted."
  fi
}

# ----
# Neovim
# ----

copy nvim $HOME/.config

echo "Neovim's Done."

# ----
# Z-Shell
# ----

copy .p10k.zsh $HOME
copy .zshrc $HOME

echo "Z-Shell's Done."
