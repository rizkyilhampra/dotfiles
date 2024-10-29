plugins=(
    gitfast
)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

source $HOME/.aliases

# show aliases in completion
zstyle ':completion:*' completer _expand_alias _complete _ignored

# fuzzy matching
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'

[ -s "/home/aquila/.bun/_bun" ] && source "/home/aquila/.bun/_bun"

eval "$(thefuck --alias)"
eval "$(zoxide init zsh --cmd j)"
eval "$(starship init zsh)"
pfetch
