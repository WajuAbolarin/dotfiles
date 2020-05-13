set nocompatible " be iMproved, required\n
set autowriteall
so ~/.vim/plugins.vim 
set complete=.,w,b,u
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set hidden
highlight Comment cterm=italic
set foldmethod=syntax
"-----Plugins----------------

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8


set backspace=indent,eol,start 					"allow backspace to work properly
let mapleader = ','						"use , as mapping leader
set number							"Show line numbers
set linespace=15 			 			"Gvim specific 


"----------Visuals-----------"
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif

set background=dark
syntax enable
colorscheme night-owl

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"----------Search-----------"
set hlsearch
set incsearch



"----------Split Management-----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


"----------Mappings-----------"
"make it easy to edit the .vimrc file
nmap <leader>ev :tabedit ~/.vimrc<cr> 
nmap <leader>en :tabedit $MYVIMRC<cr> 

"make it easy to edit plugins file
nmap <leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>
nmap <leader>es :e ~/.vim/snippets

"Start toggle NERDTree
map <C-n> :NERDTreeToggle<cr>
map <C-p> :FZF<cr>

" Use jj and jk to enter normal mode  
inoremap jj <Esc>
inoremap jk <Esc>

" Use escape to leave terminal mode
tnoremap <Esc> <C-\><C-n>

" Disable those arrow keys
map  <Up>    <Nop>
imap <Up>    <Nop>
map  <Down>  <Nop>
imap <Down>  <Nop>
map  <Left>  <Nop>
imap <Left>  <Nop>
map  <Right> <Nop>
imap <Right> <Nop>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>

" Make `n`/`N` bring next search result to middle line
nnoremap n nzz
nnoremap N Nzz
" Use <CR> in normal mode to insert a break at the cursor and enter insert
" mode
nnoremap <CR> i<CR><Esc>I

"After going to the end of the file, also center the cursor
nnoremap G :norm! Gzz<CR>

" `gb` switches to next buffer, like `gt` does with tabs
nnoremap gb :bn<CR>
" `gB` switches to previous buffer, like `gT` does with tabs
nnoremap gB :bp<CR>


:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
"Move blocks of code
nnoremap <A-j> :m .+1<CR>
nnoremap <A-k> :m .-2<CR>
inoremap <A-j> <Esc>:m .+1<CR>gi
inoremap <A-k> <Esc>:m .-2<CR>gi
vnoremap <A-j> :m '>+1<CR>gvgv
vnoremap <A-k> :m '<-2<CR>gvgv
"----------Auto-commands-----------"

"Automatically source the .vimrc file on save

augroup autosourcing
	autocmd!	
  autocmd BufWritePost %  source %
augroup END
