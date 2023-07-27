# copy .config folders to .dotfiles folder
ls -d */ | xargs -I @ sh -c 'mkdir -p ~/.dotfiles/@.config/@ ; cp -R @ ~/.dotfiles/@.config/@'
