set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/YouCompleteMe'
Plugin 'supertab'
" Plugin 'davidhalter/jedi-vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'christoomey/vim-tmux-navigator'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

if has('gui_running')
  set guioptions-=T  " no toolbar
endif
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = "\<Space>"

set laststatus=2
set pastetoggle=<F2>

"------------------------------------------------------------
" Colorscheme
"------------------------------------------------------------
colorscheme kalahari
set t_Co=256
syntax on

"------------------------------------------------------------
" Shortcuts
"------------------------------------------------------------
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-O> o<esc>
nnoremap ss i<Space><esc>
imap jj <esc>

set encoding=utf-8
filetype plugin indent on

set number
set relativenumber
set cc=80
set nu

"------------------------------------------------------------
" Indentation
"------------------------------------------------------------
set shiftwidth=4
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set tabstop=4
set expandtab     " insert spaces when hitting TABs
set autoindent    " align the new line indent with the previous line
set shiftround    " round indent to multiple of 'shiftwidth'

autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype tex setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab

au BufNewFile,BufRead *.js *.html *.css *.tex
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2


au BufNewFile,BufRead *.tex
    nnoremap <leader>bf i\begin{frame}{}<esc>o\end{frame}<esc>O
    nnoremap <leader>bi i\begin{itemize}<esc>o\end{itemize}<esc>O\item<space>
    nnoremap <leader>bn i\begin{figure}<esc>o\includegraphics[width=5cm]{}<esc>o\end{figure}<esc>kt}a
    nnoremap <leader>bc i\begin{center}<esc>o\end{center}<esc>O
    nnoremap <leader>be i\begin{equation*}<esc>o\end{equation*}<esc>O
    nnoremap <leader>bs i\begin{columns}<esc>2o\column{.5\textwidth}<esc>o\end{columns}<esc>

autocmd BufWritePre *.* :%s/\s\+$//e


"------------------------------------------------------------
" YouCompleteMe Configuration
"------------------------------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"------------------------------------------------------------
" UltiSnips Configuration
"------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-Space>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"------------------------------------------------------------
" VimTex Configuration
"------------------------------------------------------------
let g:vimtex_view_general_view="zathura"
