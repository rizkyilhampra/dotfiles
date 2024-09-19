. "$HOME/.cargo/env"

export EDITOR="nvim"

#composer
PATH="$HOME/.config/composer/vendor/bin:$PATH"

#Neovim Package Manager
export PATH="$HOME/.local/share/bob/nvim-bin/:$PATH"

# spotify theme
export PATH=$PATH:$HOME/.spicetify

# deno (TypeScript/JavaScript runtime)
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#fnm (Node Package Manager)
export PATH="$HOME/.local/share/fnm:$PATH"

export STARSHIP_CONFIG=~/starship.toml

# Created by `pipx` on 2024-01-26 03:19:19
export PATH="$PATH:$HOME/.local/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#go
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

#ruby
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"

#php development
export XDEBUG_MODE="coverage"

export GPG_TTY=$(tty)

export PATH="$HOME/.symfony5/bin:$PATH"

eval "$(fnm env --use-on-cd)"
eval "$(batman --export-env)"

[ -s "/home/aquila/.bun/_bun" ] && source "/home/aquila/.bun/_bun"

eval "$(thefuck --alias)"
eval "$(zoxide init zsh --cmd j)"

# eliminates duplicates in *paths
typeset -gU cdpath fpath path
