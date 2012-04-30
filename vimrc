set nocompatible
syntax enable

" appearance options
"set guioptions=egmrLt

" put these in .gvimrc
"set guifont=Monaco\ for\ Powerline:h12
"set guifont=UbuntuMonoForPowerline\ 12
colorscheme ir_black 
"hi FoldColumn guibg=#000000

" reload files changed outside of vim that have not been changed within vim
set autoread

" change the mapleader from \ to ,
let mapleader=","
nnoremap ; :

" mouse in normal mode only
set mouse=n

noremap <silent> <leader>m :tabp<CR>
noremap <silent> <leader>. :tabn<CR>

" ,w writes to disk
map <leader>w :w<CR>
map <leader><leader> :w<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <leader>w :w<CR>

nmap <silent> <leader><leader> :w<CR>

set mouse=n " prevents weird bugs in iTerm when scrolling
set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set expandtab
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set wildmenu
set wildmode=longest,list,full

" make j and k move up a line on the screen, not a physical line
noremap j gj
noremap k gk

" Commmand T Plugin options and shortcuts
let CommandTMatchWindowAtTop=1
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<Esc>']
nnoremap <silent> <leader>t :CommandTFlush<CR>:CommandT<CR>
nnoremap <silent> <leader>o :FufFileWithCurrentBufferDir<CR>

" keep backup and swap in temp folders
set backup
set backupdir=~/.vim/tmp/backup
set directory=~/.vim/tmp/swap

" screen size
set laststatus=2
set cursorline

set textwidth=0
set colorcolumn=81

" Matlab region comment
vmap <C-r> :s/^\ /%/<CR>
vmap <C-t> :s/^%/\ /<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Command-T shortcuts
noremap <silent> <leader>t :CommandTFlush<CR>:CommandT<CR>
nnoremap <silent> <leader>b :CommandTFlush<CR>:CommandTBuffer<CR>
nnoremap <silent> <leader>o :FufFileWithCurrentBufferDir<CR>

" Cut copy paste
vmap <C-x> "+x
vmap <C-c> "+y
map <C-v> "+gP

filetype plugin on 
filetype indent on

" clear search buffer
nmap <silent> ,/ :nohlsearch<CR>

autocmd BufEnter *.m    compiler mlint

"Pathogen setup
call pathogen#infect() 
let g:Powerline_symbols = 'fancy'

" .vimrc_local file for machine specific settings
nmap <silent> <leader>el :e ~/.vimrc_local<CR>
if filereadable($MYVIMRC . "_local")
    so ~/.vimrc_local
endif

