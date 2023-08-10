autoload -Uz compinit
compinit

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

bindkey -v
bindkey '^R' history-incremental-search-backward

################################################
################# - ALIASES - ##################
################################################
# base
alias ll="ls -la"
alias la="ls -a"
alias lt='ls --tree'
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.config/nvim/init.lua"

# proccess manager
alias top='ytop'

# vim
alias vim="nvim"

# tmux
alias muxconfig="vim ~/.tmux.conf"
alias mux="tmuxinator"

# git
alias lg='lazygit'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gp='git pull'
alias gc='git commit'
alias gco='git checkout'
alias gl='git log'

################################################
################# - PERSONAL - #################
################################################
export EDITOR='nvim'
export PATH="$PATH:/usr/local/nvim/bin"
export PATH="$PATH:/usr/local/opt/gnu-tar/libexec/gnubin"

#homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

################################################
################# - DOCKER - ##################
################################################
alias mega='sudo docker run -it --rm --name megatainer-${PWD##*/} -t --env-file env.list -w /home/${PWD##*/}/workspace/ -v $HOME/.ssh:$HOME -v $PWD/:/home/${PWD##*/}/workspace/:rw,z fomiller/megatainer:latest
 /bin/bash'

################################################
################# - KUBERNETES - ###############
################################################
alias k='kubectl'
alias kdr='kubectl --dry-run=client -o yaml'

################################################
################# - EXPORTS - ##################
################################################

################################################
################# - PYTHON - ###################
################################################
#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=$PYENV_ROOT/versions/$(pyenv global)/bin/python
export WORKON_HOME=~/.virualenvs

################################################
################# - GO - #######################
################################################
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOEXPORTS=$GOPATH:$GOBIN
export PATH=$PATH:$GOEXPORTS

################################################
################# - RUST - #####################
################################################
export PATH=$PATH:$HOME/.cargo/env

################################################
################# - NODE - #####################
################################################
export PATH=$PATH:~/.nvm/
source ~/.nvm/nvm.sh

################################################
################# - AWS - ######################
################################################
export AWS_ASSUME_PROFILE="assume"

################################################
############## - SAML2AWS - ####################
################################################
# alias s2a="function(){eval $( $(command saml2aws) script --shell=bash --profile=$@);}"

################################################
################# - PLEASE - ###################
################################################
source <(please --completion_script)
alias plz="please"

################################################
################# - KEYBINDINGS - ##############
################################################
# bindkey '^[[2~' overwrite-mode
# bindkey '^[[3~' delete-char
# bindkey '^[[H' beginning-of-line
# bindkey '^[[1~' beginning-of-line
# bindkey '^[[F' end-of-line
# bindkey '^[[4~' end-of-line
# bindkey '^[[1;5C' forward-word
# bindkey '^[[1;5D' backward-word
# bindkey '^[[3;5~' kill-word
# bindkey '^[[5~' beginning-of-buffer-or-history
# bindkey '^[[6~' end-of-buffer-or-history

# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'

################################################
################# - STARSHIP - ##################
################################################
# star ship prompt
# export STARSHIP_CONFIG=$HOME/.config/starship.toml
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
