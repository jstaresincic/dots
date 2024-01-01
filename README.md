# dots
Dot files for vim, tmux etc.

1. install NeoVim and Plug
```
sudo apt install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

2. Run either command for setup:
```
. ./setup.sh
source setup.sh
```

3. Install nvm and latest node for CoC and Copilot
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.bashrc
nvm install node
```

Nvim has some very nice ideas/settings for some European layouts (now only functional for Croatian characters, but I might make it more universal for German Swedish and similar and publish it as a plugim in the future).

## Nvim

both folder located in ~/.config on Nix machines

- ./nvim/init.vim - general setting & imports
 ./nvim/coc.vim - CoC related settings
 ./nvim/submodes.vim - for now a "programmer" submode

### CoC
- ./coc/extensions/package.json

#### Note to myself
:PlugInstall
:PlugClean
:UpdateRemotePlugins
:help vim-go
:Copilot
