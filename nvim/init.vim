if &compatible
  set nocompatible
endif

" global variables
let s:nvim_config = stdpath('config') 
let s:nvim_data   = stdpath('data')
let s:dein_dir    = s:nvim_data . '/dein'

" provider config
" Turn 0 into 1 or delete " if you use

let g:loaded_python_provider  = 0
let g:loaded_ruby_provider    = 0
let g:loaded_perl_provider    = 0
let g:loaded_node_provider    = 0

" Configuration [TODO : separate]
set encoding=utf-8
set autoindent
set smartindent
set shiftwidth=2
set clipboard+=unnamedplus
set termguicolors
set title
set number
set showcmd
set showmatch
set splitright
set splitbelow
set term=zsh

" Install dein
if !isdirectory(s:dein_dir)
  echo 'Installing dein...'
  call system('git clone https://github.com/Shougo/dein.vim ' . s:dein_dir)
  echo 'Finished installing dein.'
endif

let &runtimepath = &runtimepath . ',' . s:dein_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:nvim_config . '/dein.toml')
  call dein#end()

  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  echo 'Installing plugins...'
  call dein#install()
  echo 'Finished installing plugins.'
endif

syntax enable
