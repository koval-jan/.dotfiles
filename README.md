# .dotfiles
.dotfiles for stow

Manage .dotfiles with stow

```sh
git clone https://github.com/koval-jan/.dotfiles.git && cd .dotfiles && git submodule update --init
stow -t ~/ vim
stow -t ~/ spacemacs
stow -t ~/ git
```

## git

To include extra git configuration globally run: 

```sh
git config --global --add include.path "$HOME/.gitconfig.extra"
```

remove

```sh
git config --global --unset-all include.path ".*\.gitconfig.extra"
```

### git with p4v

to use p4v as diff and merge tool

```sh
git config --global --add include.path "$HOME/.gitconfig.p4v"
```

remove

```sh
git config --global --unset-all include.path ".*\.gitconfig.p4v"
```

### git with meld

to use meld as diff and merge tool

```sh
git config --global --add include.path "$HOME/.gitconfig.meld"
```

remove

```sh
git config --global --unset-all include.path ".*\.gitconfig.meld"
```

