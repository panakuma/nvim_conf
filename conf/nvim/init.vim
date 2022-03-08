" pyenv-virtualenvの設定
let g:python_host_prog = '/home/panakuma/.anyenv/envs/pyenv/versions/neovim-py2/bin/python'
let g:python3_host_prog = '/home/panakuma/.anyenv/envs/pyenv/versions/neovim-py3/bin/python'


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/panakuma/.nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/panakuma/.nvim/dein')

" Let dein manage dein
" Required:
call dein#add('/home/panakuma/.nvim/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" dein.toml系の設定
let s:toml_dir  = $HOME . '/.config/nvim/dein_toml'
let s:toml      = s:toml_dir . '/dein.toml'
let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

call dein#load_toml(s:toml,      {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set number
set showtabline=2
set termguicolors
