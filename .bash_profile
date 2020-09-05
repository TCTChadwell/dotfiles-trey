eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PYENV_ROOT=/usr/local/var/pyenv
export PATH=$PATH:/usr/local/Cellar/node/12.11.1/bin
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin


