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
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'preservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'airblade/vim-gitgutter'
	Plug 'morhetz/gruvbox'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'caenrique/nvim-toggle-terminal'
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

"
" Extensions configuration
"
source /home/valery/.config/nvim/airline/airline.vim
source /home/valery/.config/nvim/nerdtree/nerdtree.vim
source /home/valery/.config/nvim/nerdtree/nerdtree-git.vim
source /home/valery/.config/nvim/nerdtree/nerdtree-commenter.vim
source /home/valery/.config/nvim/vim-gitgutter/vim-gitgutter.vim
source /home/valery/.config/nvim/gruvbox/gruvbox.vim
source /home/valery/.config/nvim/fzf/fzf.vim
source /home/valery/.config/nvim/toggle-terminal/toggle-terminal.vim
source /home/valery/.config/nvim/coc/coc.vim
source /home/valery/.config/nvim/coc/extensions.vim
