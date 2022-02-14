#/bin/zsh

function remove-dir {
  if [ -d $1 ]; then
    rm -rf $1
  fi
}

function remove-file {
  if [ -f $1 ]; then
    rm -f $1
  fi
}

# ----
# Neovim
# ----

remove-dir $HOME/.local/share/nvim
remove-dir $HOME/.cache/nvim
remove-dir $HOME/.config/nvim

echo "Neovim's Done."

# ----
# Z-Shell
# ----

remove-file $HOME/.zshrc

if [ -f $HOME/.p10k.zsh ]; then
  rm -f $HOME/.p10k.zsh
  rm -rf $HOME/.cache/p10k*
fi

remove-dir $HOME/.local/share/zsh
remove-dir $HOME/.local/share/zinit

echo "Z-Shell's Done."
