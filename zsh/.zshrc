# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

################################################
################# - ALIASES - ##################
################################################
# base
alias ll="ls -la"
alias la="ls -a"
alias lt='ls --tree'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
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
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

################################################
################# - PLUGINS - ##################
################################################

# IDK what this is from
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PATH=$PATH:~/.local/bin
################################################
################# - STARSHIP - ##################
################################################
# star ship prompt
# export STARSHIP_CONFIG=$HOME/.config/starship.toml
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
