" Terminal stuff
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
colors molokai

syntax on

" Tabs and spacing
set tabstop=4
set shiftwidth=4
"set smarttab
set expandtab
set softtabstop=4
"set autoindent
set colorcolumn=120
highlight ColorColumn ctermbg=8

set modeline
set ruler

" Search stuff
set incsearch       " Highlight as you search
set ignorecase      " Ignore case in search
set smartcase       " Case-sensitive when caps are used

" Python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Ruby
autocmd BufRead *.rb set tabstop=2 shiftwidth=2

" Go
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Yaml
filetype plugin indent on
autocmd FileType yaml setl indentkeys-=<:>

" Maps

:nmap \l :setlocal number!<CR>

"" Buffers
:map <C-J> :bnext<CR>
:map <C-K> :bprev<CR>
:map <C-L> :tabn<CR>
:map <C-H> :tabp<CR>
""" Switch to last buffer
:nmap <C-e> :e#<CR>

"" Retab existing files with backslash-t and backslash-T
nmap \t :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap \T :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>

" Plugins
"" NerdTREE stuff
map <silent> <C-n> :NERDTree<CR>
let NERDTreeQuitOnOpen = 1

nmap <F5> :GundoToggle<CR>

"" airline
let g:airline_theme = 'powerlineish'
set laststatus=2

"" Load VIM plugins via pathogen
execute pathogen#infect()
