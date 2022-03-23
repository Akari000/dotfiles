
inoremap <silent>jj <Esc>

set number
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Akari/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/Akari/.cache/dein')
  call dein#begin('/Users/Akari/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/Akari/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('szorfein/fromthehell.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
colorscheme fromthehell

"save cursolposition
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"")<=line("$")|
    \    exe "normal! g'\""|
    \endif
endif

nnoremap j gj
nnoremap k gk
set whichwrap=b,s,h,l,<,>,[,],~

set noswapfile

set tabstop=4
set shiftwidth=4
set autoindent
set noexpandtab
set cindent

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
let g:gitgutter_highlight_lines = 1

