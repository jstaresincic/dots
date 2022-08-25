# dots
Dot files for vim, tmux etc.

Run either command for setup:
```
. ./setup.sh
source setup.sh
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
