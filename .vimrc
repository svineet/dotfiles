
set nocompatible
filetype off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim/

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
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
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'junegunn/goyo.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'lepture/vim-jinja'

" add plugins before this
call vundle#end()

filetype plugin indent on
syntax on

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set laststatus=2
set clipboard=unnamedplus
set splitright
set splitbelow
set relativenumber

set guifont=Inconsolata\ 16
set guioptions=e
set nohlsearch

set background=light
colorscheme solarized
set number

" CtrlP settings
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_open_new_file = 't'

" Airline settings
let g:airline_powerline_fonts = 1
autocmd VimEnter * AirlineToggleWhitespace

" Mappings
let mapleader=','
nnoremap <leader>rc :tabnew ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>d :set background=dark<cr>
nnoremap <leader>l :set background=light<cr>

nnoremap <leader>p oimport pdb; pdb.set_trace()<esc>

nnoremap <space> zz
nnoremap <c-s> :w<cr>
nnoremap <c-x> :close!<cr>
inoremap jk <esc>
vnoremap jk <esc> 
inoremap <esc> <Nop>
vnoremap <esc> <Nop>
nnoremap <c-a> ggvG$

nnoremap <leader>j :NERDTreeToggle<cr>

nnoremap <c-n> :tabp<cr>
nnoremap <c-m> :tabn<cr>

nnoremap <leader>r :!codeutil %<cr>
nnoremap <leader>cr :execute CodeutilExecute()<cr>
nnoremap <leader>rt :%retab!<cr>

nnoremap <leader>t :put =strftime('%Y-%m-%d %T')<cr>

nnoremap <leader>jinja :set filetype=jinja

" Competitive programming execution function
function! CodeutilExecute()
    let output = system("codeutil " . bufname("%") . " 2>&1")

    split __CM_SVINEET__
    normal! ggdG

    call append(0, split(output, '\v\n'))
endfunction

let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
