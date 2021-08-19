"
" General Neovim settings
"

" Set leader key
let g:mapleader = ','

" Enable syntax highlighting
syntax enable

" Keep multiple buffers open
set hidden

" Long lines not wrapped
set nowrap

" Default encoding
set encoding=utf-8
set fileencoding=utf-8

" Smaller pop up menu
set pumheight=10

" Show cursor position all the time
set ruler

" More space for messages
set cmdheight=2

" Treat dash separated words as a word text object
set iskeyword+=-

" Disable arrow keys and page up / down
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
noremap <PageUp> <nop>
inoremap <PageUp> <nop>
vnoremap <PageUp> <nop>
noremap <PageDown> <nop>
inoremap <PageDown> <nop>
vnoremap <PageDown> <nop>

" Horizontal splits on bottom
set splitbelow

" Vertical splits on right
set splitright

" 256 colors support
set t_Co=256

" More visible '`' character
set conceallevel=0

" 4 Spaces for TAB
set tabstop=4

" 4 Spaces for indention
set shiftwidth=4

" Smart TAB's
set smarttab

" Smart indents
set smartindent

" Support auto indent
set autoindent

" Status line
set laststatus=0

" Line numbers
set number

" Highlight current line
set cursorline

" Smooth scroll
set so=999

" Max line length
set colorcolumn=120

" Background color
set background=dark

" Transparent background
autocmd VimEnter * hi Normal ctermbg=none

" Show TAB's
set showtabline=2

" Do not display mode
set noshowmode

" Disable backup
set nobackup
set nowritebackup

" Faster completion
set updatetime=300

" Short timeout
set timeoutlen=500

" Stop new line comment continuation
set formatoptions-=cro

" Shared clipboard
set clipboard=unnamedplus

" Auto source while writing to init.vim
au! BufWritePost $MYVIMRC source %
cmap w!! w !sudo tee %

