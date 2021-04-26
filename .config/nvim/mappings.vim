" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Swap lines
nnoremap <leader>j :m +1<CR>
nnoremap <leader>k :m -2<CR>

" Save with Ctrl-S
noremap  <silent> <C-S>         :w<CR>
vnoremap <silent> <C-S>         <ESC>:w<ESC><CR>
inoremap <silent> <C-S>         <ESC>:w<CR>

" Quick quit command
noremap <leader>q :quit<CR>
noremap <leader>Q :qa!<CR>

" Surround
nmap <leader>a ysiw

" Unbind arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
