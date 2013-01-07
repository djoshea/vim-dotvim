set nocompatible
syntax enable

" appearance options
set guioptions=egmrLt
set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
set t_Co=256
colorscheme wombat256
hi FoldColumn guibg=#000000

" change the mapleader from \ to ,
let mapleader=","
nnoremap ; :

" tab switching
nmap <leader>a :tabp<CR>
nmap <leader>f :tabp<CR>
map <C-t> :tabnew<CR>

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

" keep backup and swap in temp folders
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/swap

"set transparency=10
set laststatus=2
set cursorline

set textwidth=0
set colorcolumn=81

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


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

"CtrlP setup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

nnoremap <silent> <leader>t :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
nnoremap <silent> <leader>d :CtrlPCurWD<CR>

" Removing Command T in favor of CtrlP
" Commmand T Plugin options and shortcuts
"let CommandTMatchWindowAtTop=1
"nnoremap <silent> <leader>t :CommandTFlush<CR>:CommandT<CR>
"nnoremap <silent> <leader>o :FufFileWithCurrentBufferDir<CR>


" vim-autoread based on
" http://vim.wikia.com/wiki/Have_Vim_check_automatically_if_the_file_has_changed_externally
" see .vim/bundle/vim-autoread/plugin/autoread.vim


autocmd VimEnter * WatchForChangesAllFile! 

" load file for machine specific settings
nmap <silent> <leader>el :e ~/.vimrc_local<CR>
if filereadable($MYVIMRC . "_local")
    so ~/.vimrc_local
endif

