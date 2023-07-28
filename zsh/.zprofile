# homebrew 
eval "$(/opt/homebrew/bin/brew shellenv)"

# python
eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init -)"
eval "$($(pyenv which pyenv-sh-virtualenvwrapper_lazy))"
