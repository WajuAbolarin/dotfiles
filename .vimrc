set nocompatible " be iMproved, required
set autowriteall
so ~/.vim/plugins.vim
set complete=.,w,b,u
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
set hidden
"-----Plugins----------------
"/
"/Airline
"/
	
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"/
"/CtrlP
"/
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|git'
"Exclude files in gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
syntax enable 

"/
"/Greplace.vim
"
set grepprg=ack
let g:grep_cmd_opts = '--noheading'


set backspace=indent,eol,start 					"allow backspace to work properly
let mapleader = ','						"use , as mapping leader
set number							"Show line numbers
set linespace=15 			 			"Gvim specific 






"----------Visuals-----------"
" Theme
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

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


"----------Mappings-----------"
"make it easy to edit the .vimrc file
nmap <leader>ev :tabedit ~/.vimrc<cr> 

"make it easy to edit plugins file
nmap <leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>
nmap <leader>es :e ~/.vim/snippets

"Start toggle NERDTree
map <C-n> :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"Find by tag
nmap  <leader>f :tag<space>


"----------Auto-commands-----------"

"Automatically source the .vimrc file on save

augroup autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END
