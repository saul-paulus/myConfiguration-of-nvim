
call plug#begin('~/.config/nvim/plug-nvim')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
"File Explorer

"Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jnwhiteh/vim-golang'

"COC-neovim=================

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"==============


"==================FZF & vim-router===========
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"+++++++++++++++++++++++++++++++++

"=========Split-term===================
Plug 'vimlab/split-term.vim'

"======================tag html=======
Plug 'alvan/vim-closetag'
"========================

"==============================dasbor===========
"

Plug 'glepnir/dashboard-nvim'
"
"+++++++++++++++++++++++

call plug#end()



source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/seting.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/onedark.vim
source $HOME/.config/nvim/closetag.vim





