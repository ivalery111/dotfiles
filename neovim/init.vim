"
" Neovim configuration
"

source /home/valery/.config/nvim/general/settings.vim
source /home/valery/.config/nvim/general/keys.vim

"
" Automatic vim-plug installation
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
	Plug 'vimwiki/vimwiki'
	Plug 'vim-ctrlspace/vim-ctrlspace'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'majutsushi/tagbar'
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
source /home/valery/.config/nvim/vimwiki/vimwiki.vim
source /home/valery/.config/nvim/vim-ctrlspace/vim-ctrlspace.vim
source /home/valery/.config/nvim/tagbar/tagbar.vim
source /home/valery/.config/nvim/coc/coc.vim
source /home/valery/.config/nvim/coc/extensions.vim
