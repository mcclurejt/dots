"" Load Vim-Plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-bufferline'
Plug 'Shougo/unite.vim'
Plug 'francoiscabrol/ranger.vim'
call plug#end()

filetype plugin indent on
syntax enable

""" COLORSCHEME
colorscheme jellybeans
let g:jellybeans_use_term_italics = 1

""" BASIC
set backspace=indent,eol,start
set incsearch
set ruler
set number
set numberwidth=3
autocmd BufWritePre * %s/\s\+$//e " remove trailing whitespace on save
set mouse=a
set hidden
set scrolloff=10
set sidescrolloff=10
set cursorline
set timeoutlen=200
set laststatus=2
set noswapfile
""" MAPPINGS
let mapleader=" "
noremap <Leader>r :Ranger<CR>
vnoremap <silent> jk <ESC>
inoremap jk <ESC>
nnoremap ; :
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
nnoremap <Leader>h :set hlsearch!<CR>
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none
hi CursorLineNr term=bold ctermfg=11

""" PLUGIN CONFIG
let g:bufferline_echo = 0
autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()
let g:bufferline_inactive_highlight = 'CursorLine'
let g:bufferline_active_highlight = 'CursorLineNr'
let g:bufferline_show_bufnr = 0
let g:bufferline_active_buffer_left = '|'
let g:bufferline_active_buffer_right = '|'

