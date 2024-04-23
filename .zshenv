# cargo (Rust package manager)
. "$HOME/.cargo/env"

# if [[ -n $SSH_CONNECTION ]]; then
#     export EDITOR='vim'
# else
#     export EDITOR="nvim"
# fi
export EDITOR="nvim"

#composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

#Neovim Package Manager
export PATH="$HOME/.local/share/bob/nvim-bin/:$PATH"

# tmux plugin
export PATH="$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH"

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
