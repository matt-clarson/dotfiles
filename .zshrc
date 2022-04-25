export EDITOR=nvim

alias ls='ls -G'
alias ..='cd ..'

function mkcd {
  local target=$1
  mkdir -p "$target"
  cd $target
}

# brew stuff
PATH=/opt/homebrew/bin:$PATH
alias intel_brew=/usr/local/bin/brew
alias brew=/opt/homebrew/bin/brew
# brew stuff end

# localstack
alias localaws='aws --endpoint-url http://localhost:4566'
# localstack end

export GOBIN=$HOME/.go/bin
export PATH=$PATH:$GOBIN
