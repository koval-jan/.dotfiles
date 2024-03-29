python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Avoid side-effects when nocompatible has already been set.
if &compatible
  set nocompatible
endif
" set list
" set listchars=tab:>-,trail:~
" set number
" set background=dark

