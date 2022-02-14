# ----
# Global variables
# ----
ZSH_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh"

# ----
# Zinit scheme
# ----
ZINIT_HOME="$ZSH_HOME/zinit"

if [[ ! -d $ZINIT_HOME ]]; then
  git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME
fi

source "$ZINIT_HOME/zinit.zsh"
ZINIT[HOME_DIR]=$ZINIT_HOME
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "$ZSH_HOME/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "$ZSH_HOME/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZSH_HOME/p10k.zsh ]] || source $ZSH_HOME/p10k.zsh
