#!/bin/sh

# ----
# Neovim
# ----

rm -rf $HOME/.cache/nvim
rm -rf $HOME/.config/nvim

rm -rf $HOME/.local/share/nvim

echo "Neovim's Done."

# ----
# Z-Shell
# ----

rm -f $HOME/.zshrc

rm -f $HOME/.p10k.zsh
rm -rf $HOME/.cache/p10k*

rm -rf $HOME/.local/share/zsh
rm -rf $HOME/.local/share/zinit

echo "Z-Shell's Done."

# ----
# latexmk
# ----

rm -f $HOME/.latexmkrc

echo "latexmk's Done."
