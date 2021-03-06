set nocompatible              " required
filetype off                  " required


call plug#begin('~/.vim/plugged')
Plug 'JuliaLang/julia-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'Shougo/deoplete.nvim'
" Plug 'neoclide/coc.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mileszs/ack.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'tpope/vim-dispatch'
call plug#end()              " required
filetype plugin indent on    " required

if has('gui_running')
  set guioptions-=T  " no toolbar
endif

let mapleader = "\<Space>"

set laststatus=2
set pastetoggle=<F2>

" No annoying swap files.
set noswapfile
set lazyredraw

"------------------------------------------------------------
" Colorscheme
"------------------------------------------------------------
set background=dark
colorscheme gruvbox
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
nnoremap <F4> :setlocal spell! spelllang=en_us<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <leader>e :exe getline(line('.'))<cr>

set encoding=utf-8
filetype plugin indent on

set number
set cc=80
set nu

" map each number to its shift-key character
nnoremap & 1
nnoremap é 2
nnoremap " 3
nnoremap ' 4
nnoremap ( 5
nnoremap - 6
nnoremap è 7
nnoremap _ 8
nnoremap ç 9
nnoremap à 0
" and then the opposite
nnoremap 1 &
nnoremap 2 é
nnoremap 3 "
nnoremap 4 '
nnoremap 5 (
nnoremap 6 -
nnoremap 7 è
nnoremap 8 _
nnoremap 9 ç
nnoremap 0 à


set wildignore+=*.pdf,*.aux,*.dvi,*.out,*.mtc*,*.jld,*.pyc
"
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

" au BufNewFile,BufRead *.js *.html *.css *.tex
"     set tabstop=2
"     set softtabstop=2
"     set shiftwidth=2


" Remove trailing whitespace while saving.
autocmd BufWritePre *.* :%s/\s\+$//e


"------------------------------------------------------------
" CtrlP Configuration
"------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

"------------------------------------------------------------
" UltiSnips Configuration
"------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"------------------------------------------------------------
" VimTex Configuration
"------------------------------------------------------------
let g:vimtex_view_general_view="zathura"

"------------------------------------------------------------
" EasyAlign Configuration
"------------------------------------------------------------
xmap ga <Plug>(EasyAlign)

"------------------------------------------------------------
" Ack configuration
"------------------------------------------------------------
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"------------------------------------------------------------
" Deoplete configuration
"------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
