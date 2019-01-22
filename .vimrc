"         _
"        (_)
"  __   ___ _ __ ___  _ __ ___
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__
"    \_/ |_|_| |_| |_|_|  \___|



syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader =" "

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Syntastic
  Plugin 'vim-syntastic/syntastic'

"Complete
  "Plugin 'valloric/youcompleteme'
  Plugin 'ervandew/supertab'

"Displays which mode you are on
   Plugin 'vim-airline/vim-airline'
   Plugin 'vim-airline/vim-airline-themes'

"GODS PLUGIN
  Plugin 'cohama/lexima.vim'
  Plugin 'tpope/vim-surround'

"Haskell highlight
  Plugin 'neovimhaskell/haskell-vim'

"Fuzzy file finder
  Plugin 'kien/ctrlp.vim'
  Plugin 'powerline/fonts'

call vundle#end()            " required

filetype plugin indent on    " required
set cursorline
hi CursorLine term=bold cterm=bold guibg=White
set number                  " Enable line numbers.
set numberwidth=5           " width of numbers line (default on gvim is 4)
set report=0                " Show all changes.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set showmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set title                   " Show the filename in the window title bar.

set scrolloff=5             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll
                            "   horizontally.
set wildmenu                " Hitting TAB in command mode will
set wildchar=<TAB>          "   show possible completions.
set wildmode=list:longest
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif

set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=2               " Tab key results in # spaces
set tabstop=2                   " Tab is # spaces
set shiftwidth=2                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" gvim needed
  vnoremap <C-c> "*y :let @+=@*<CR>
  map <C-a> "+P

"Airline config
  let g:airline_theme='deus'
  let g:airline_powerline_fonts = 1
  let g:airline_section_z=''
  let g:airline_section_error=''
  let g:airline_section_warning=''
  let g:airline_section_gutter=''
  let g:airline_skip_empty_sections = 1
  let g:airline_section_x=''

"Syntastic config
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_error_symbol = "✗"
  let g:syntastic_loc_list_height=5
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  map <leader>w :SyntasticCheck<CR>
  map <leader>e :SyntasticReset<CR>
  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
  nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"Save with Ctrl-S
  noremap <silent> <C-S>          :update<CR>
  vnoremap <silent> <C-S>         <C-C>:update<CR>
  inoremap <silent> <C-S>         <C-O>:update<CR>

" Automatically deletes all trailing whitespace on save.
  autocmd BufWritePre * %s/\s\+$//e

