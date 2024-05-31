set cursorline
set number
set showcmd
set wildmenu
set hidden
syntax on
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set mouse=a
set encoding=utf-8
filetype on
set nomodeline
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"movement
noremap w k
noremap a h
noremap r j
noremap s l
noremap R 5j
noremap W 5k
noremap A 5h
noremap S 5l
noremap <M-w> N
noremap <M-r> n 
imap <C-w> <Up>
imap <C-a> <Left>
imap <C-r> <Down>
imap <C-s> <Right>
"insert
noremap t d
noremap y q
noremap f y
noremap n a
noremap N A
"mapcommand
nmap q :q<CR>
nmap <space>a :set nosplitright<CR>:vsplit<CR>
nmap <space>s :set splitright<CR>:vsplit<CR>
nmap <space>w :set nosplitbelow<CR>:split<CR>
nmap <space>r :set splitbelow<CR>:split<CR>
nmap Q :wq<CR>
nmap <space>i <C-w><Right>
nmap <space>n <C-w><Left>
nmap <space>e <C-w><Down>
nmap <space>u <C-w><Up>
map <C-k> :source $MYVIMRC<CR>
nmap <C-s> :w<CR>
imap  <C-t> <BS>



"coc-config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
set updatetime=100
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <LEADER>h :call ShowDocumentation()<CR>
map <space><Del> :!make<CR>
map <space>t :!make -C ../..<CR>:!make download -C ../..<CR>






"plugin_install
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'rbgrouleff/bclose.vim', 
Plug 'francoiscabrol/ranger.vim',
Plug 'vim-airline/vim-airline',
Plug 'wbthomason/packer.nvim',
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()
let g:ranger_map_keys = 0
colorscheme tokyonight-night
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"ranger-vim configuration
map <C-f> :Ranger<CR>
"airline configuration
let g:airline#extensions#tabline#enabled = 1
