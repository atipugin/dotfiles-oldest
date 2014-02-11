# ==============================================================================
# .zshrc
# ==============================================================================

# Oh My Zsh
# --------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git brew bundler cap gem rails sublime)

source $ZSH/oh-my-zsh.sh

# Exports
# --------------------------------------

export CDPATH=$HOME/Code:$CDPATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

export EDITOR="subl"
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Aliases
# --------------------------------------

alias fs="foreman start"
alias zshconfig="$EDITOR ~/.zshrc"

# Ruby/rbenv/etc
# --------------------------------------

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Misc
# --------------------------------------

eval "$(direnv hook $0)"
source "`brew --prefix`/etc/grc.bashrc"
