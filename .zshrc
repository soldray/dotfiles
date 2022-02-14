# ----
# Global variables
# ----
CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
ZSH_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh"

# ----
# Zinit scheme
# ----
ZINIT_HOME="$ZSH_HOME/zinit"

if [[ ! -d $ZINIT_HOME ]]; then
  git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME
fi

source "$ZINIT_HOME/zinit.zsh"
zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Disable git migration.
POWERLEVEL9K_DISABLE_GITSTATUS=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=dir
