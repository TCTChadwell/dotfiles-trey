
# Load antigen.
source $HOME/.antigen.zsh

# Load oh-my-zsh.
antigen use oh-my-zsh

# Bundles from oh-my-zsh.
antigen bundle docker
antigen bundle docker-compose
antigen bundle python
antigen bundle pip
antigen bundle pyenv
antigen bundle go

# Custom bundles.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle mafredri/zsh-async
antigen bundle nojhan/liquidprompt
antigen bundle gangleri/pipenv
antigen bundle lukechilds/zsh-nvm

# Set theme.
antigen theme nojhan/liquidprompt

# Tell antigen that we're done.
antigen apply

# Don't share history.
unsetopt share_history

# Don't clear the screen after quitting a man page.
export MANPAGER="less -X"

# Paths.
export GOPATH="$HOME/nastygoat/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


# Increase the max number of open file descriptors allowed.
ulimit -n 4096

# Enable aws cli tab completion.
autoload -Uz compinit && compinit
autoload -Uz bashcompinit
bashcompinit -i
complete -C aws_completer aws
