export ZSH="$HOME/.oh-my-zsh"

plugins=(
    gitfast
    zsh-autosuggestions 
    zsh-syntax-highlighting
    zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' completer _expand_alias _complete _ignored

source $HOME/.aliases

[ -s "/home/aquila/.bun/_bun" ] && source "/home/aquila/.bun/_bun"

eval "$(thefuck --alias)"
eval "$(zoxide init zsh --cmd j)"

# Load and initialize the completion system ignoring insecure directories with a
# cache time of 20 hours, so it should almost always regenerate the first time a
# shell is opened each day.
autoload -Uz compinit
_comp_files=(${ZDOTDIR:-$HOME}/.zcompdump(Nm-20))
if (( $#_comp_files )); then
  compinit -i -C
else
  compinit -i
fi
unset _comp_files

eval "$(starship init zsh)"

pfetch
