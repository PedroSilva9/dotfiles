call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'machakann/vim-highlightedyank'

Plug 'alexeyignatiev/vim-dimacs'
Plug 'whybin/alloy.vim'
Plug 'bohlender/vim-smt2'
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'hs']}
Plug 'dag/vim2hs', {'for': ['haskell', 'hs']}

Plug 'vifm/vifm.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()
