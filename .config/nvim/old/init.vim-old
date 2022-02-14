if &compatible
  set nocompatible
endif

" global variables
let s:nvim_config = stdpath('config') 
let s:nvim_data   = stdpath('data')
let s:vplug_dir   = s:nvim_data . '/vim-plug'

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

" Install vim-plug
if !isdirectory(s:vplug_dir)
  echo 'Installing vim-plug...'
  
  call system('git clone https://github.com/junegunn/vim-plug ' . s:vplug_dir)
  call system('mkdir ' . s:vplug_dir . '/autoload')
  call system('mv ' . s:vplug_dir . '/plug.vim ' . s:vplug_dir . '/autoload')
  
  echo 'Finished installing vim-plug.'
endif

let &runtimepath = &runtimepath . ',' . s:vplug_dir

call plug#begin(s:nvim_data)
" Utilities
Plug 'vim-syntastic/syntastic'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'SirVer/ultisnips'

" Visual
Plug 'flrnd/plastic.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Automatically install missing plugins.
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

if has('vim_starting')
  runtime settings.vim
endif

syntax enable
