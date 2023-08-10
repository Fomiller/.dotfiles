# homebrew 
eval "$(/opt/homebrew/bin/brew shellenv)"

# python
eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init -)"
eval "$($(pyenv which pyenv-sh-virtualenvwrapper_lazy))"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
