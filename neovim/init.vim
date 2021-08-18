"
" Neovim configuration
"

source /home/valery/.config/nvim/general/settings.vim
source /home/valery/.config/nvim/general/keys.vim

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
source /home/valery/.config/nvim/airline/airline.vim
source /home/valery/.config/nvim/nerdtree/nerdtree.vim
source /home/valery/.config/nvim/nerdtree/nerdtree-git.vim
source /home/valery/.config/nvim/nerdtree/nerdtree-commenter.vim
