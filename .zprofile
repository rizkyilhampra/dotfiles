typeset -U path PATH

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export GPG_TTY=$(tty)
export XDEBUG_MODE="coverage"
export STARSHIP_CONFIG=~/starship.toml

# Define XDG Base Directory paths
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_CACHE_HOME="$HOME/.cache"

[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export GEM_HOME="$(gem env user_gemhome)"
export DENO_INSTALL="$HOME/.deno"
export BUN_INSTALL="$HOME/.bun"

path=(
    "$HOME/.local/bin"
    "$HOME/.config/composer/vendor/bin"
    "$HOME/.local/share/fnm"
    "$BUN_INSTALL/bin"
    "$DENO_INSTALL/bin"
    "$HOME/.local/share/bob/nvim-bin"
    "$HOME/.symfony5/bin"
    "$HOME/.luarocks/bin"
    "$HOME/.spicetify"
    "$GOBIN"
    "$GOPATH/bin"
    "$GEM_HOME/bin"
    $path
)

export PATH

eval "$(fnm env --use-on-cd)"
eval "$(batman --export-env)"

