let g:mapleader = ","

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set softtabstop=2                       " Tab key results in # spaces
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set copyindent                          " copy previous indentation on auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set termguicolors
set numberwidth=5                       " width of numbers line
set rnu                                 " Set relative number
set report=0                            " Show all changes.
set noshowmode                          " Don't show the current mode.
set showcmd                             " show partial command on last line of screen.
set showmatch                           " show matching parenthesis
set hlsearch
set ignorecase                          " Ignores case sensitive cases when searching
set undofile
set scrolloff=5                         " Start scrolling n lines before horizontal border of window.
set sidescrolloff=7                     " Start scrolling n chars before end of screen.
set sidescroll=1                        " The minimal number of columns to scroll horizontally.
set wildmenu                            " Hitting TAB in command mode will
set wildchar=<TAB>                      " Show possible completions.
set wildmode=list:longest
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set nobackup
set nowritebackup
set noswapfile

" auto source when writing to init.vim
au! BufWritePost $MYVIMRC source %

" Automatically deletes all trailing whitespace on save.
au BufWritePre * %s/\s\+$//e

au Bufenter *.hs set nofoldenable

au BufNewFile,BufRead *.why setfiletype why
au BufNewFile,BufRead *.mlw setfiletype why
au FileType why setlocal commentstring=(*\ %s\ *)
au FileType why source $HOME/.config/nvim/why3.vim

au BufNewFile,BufRead *.mcrl2 setfiletype mcrl
au FileType mcrl setlocal commentstring=%\ %s
au FileType mcrl source $HOME/.config/nvim/mcrl2.vim
