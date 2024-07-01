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

# homedir bin
export PATH=$PATH:$HOME/bin

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
bindkey '^R' history-incremental-search-backward
alias firefox=/Applications/Firefox.app/Contents/MacOS/firefox

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mattclarson/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mattclarson/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mattclarson/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mattclarson/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

bindkey -v
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mattclarson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mattclarson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mattclarson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mattclarson/google-cloud-sdk/completion.zsh.inc'; fi
