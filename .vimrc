
set nocompatible
filetype off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim/

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'jvirtanen/vim-octave'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-surround'
Plugin 'danro/rename.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'lunaru/vim-less'
Plugin 'edkolev/promptline.vim'

" add plugins before this
call vundle#end()

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set clipboard=unnamedplus
set splitright
set splitbelow
set relativenumber

set guifont=Inconsolata\ 20
set guioptions=ae
set nohlsearch

set background=light
colorscheme base16-ateliercave
set number

" CtrlP settings
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" Airline Configuration
let g:airline_section_warning = ''
let g:airline_theme = 'base16'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Mappings
let mapleader=','
nnoremap <leader>rc :edit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>d :set background=dark<cr>
nnoremap <leader>l :set background=light<cr>
nnoremap <space> zz
nnoremap <c-s> :w<cr>
nnoremap <c-x> :close!<cr>
inoremap <c-u> <esc>viwU
inoremap jk <esc>
vnoremap jk <esc> 
inoremap <esc> <Nop>
vnoremap <esc> <Nop>
nnoremap <c-a> ggvG$
nnoremap <c-j> :NERDTreeToggle<cr>
nnoremap <c-n> :bp<cr>
nnoremap <c-m> :bn<cr>
nnoremap <leader>r :!codeutil %<cr>
nnoremap <leader>cr :execute CodeutilExecute()<cr>

nnoremap <leader>t :put =strftime('%Y-%m-%d %T')<cr>

" Competitive programming execution function
function! CodeutilExecute()
    let output = system("codeutil " . bufname("%") . " 2>&1")

    split __CM_SVINEET__
    normal! ggdG

    call append(0, split(output, '\v\n'))
endfunction
