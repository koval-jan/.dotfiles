# .dotfiles
.dotfiles for stow

Manage .dotfiles with stow

```sh
git clone https://github.com/koval-jan/.dotfiles.git && cd .dotfiles && git submodule update --init
stow -t ~/ vim
stow -t ~/ spacemacs
stow -t ~/ git
stow -t ~/ screen
stow -t ~/ tmux
stow -t ~/ ssh
stow -t ~/ bash
```

## git

To include extra git configuration globally run: 

enabling:

```sh
git config --global --add include.path "$HOME/.gitconfig.extra"
```

disabling:

```sh
git config --global --unset-all include.path ".*\.gitconfig.extra"
```

### git with p4v

to use p4v as diff and merge tool

enabling:

```sh
git config --global --add include.path "$HOME/.gitconfig.p4v"
```

disabling:

```sh
git config --global --unset-all include.path ".*\.gitconfig.p4v"
```

### git with meld

to use meld as diff and merge tool

enabling:
```sh
git config --global --add include.path "$HOME/.gitconfig.meld"
```

disabling:

```sh
git config --global --unset-all include.path ".*\.gitconfig.meld"
```

## bash

bashrc extension scripts in ~/.bashrc.d/

enabling:

```sh
# add to ~/.bashrc

# extension from dotfiles loads ~/.bashrc.d/*.bashrc files
source ~/.bashrc.extra
```


disabling:

```sh
# remove from ~/.bashrc

# extension from dotfiles loads ~/.bashrc.d/*.bashrc files
source ~/.bashrc.extra
```
