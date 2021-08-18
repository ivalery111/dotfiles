"
" Neovim configuration
"

source ./general/settings.vim
source ./general/keys.vim

"
" Neovim extensions
"
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

"
" Extensions configuration
"
source ./airline/airline.vim
