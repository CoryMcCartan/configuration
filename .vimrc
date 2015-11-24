" CORY McCARTAN
" vim configuration file
"
" Pathogen {{{
execute pathogen#infect()
"}}} 
" Intenting {{{
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set copyindent
set smartindent
" 80 character max
set tw=79
" }}}
" Syntax highlighting {{{
syntax on
"}}}
" Keyboard shortcuts {{{
" replace : with ;
nnoremap ; :
" moving lines
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv
" delete current line
imap <c-d> <Esc>Vxi
" exit insert mode
inoremap jk <Esc>
inoremap <C-c> <ESC>
"}}}
" Motion {{{
" move to next editor line
nnoremap j gj
nnoremap k gk
" tab matches braces
nnoremap <tab> %
vnoremap <tab> %
" more normal handling
set nostartofline
set mouse=a
set backspace=indent,eol,start
" word wrap
set whichwrap+=<,>,h,l,[,]
" use f2 to toggle between pase and nopaste
set pastetoggle=<F2>
"}}}
" Display {{{
" show partial commands
set showcmd
" line numbers
set number
" show filename in title
set title
" ruler (cursor pos in lower right)
set ruler
" folding
nnoremap <space> za
vnoremap <space> za
set foldmethod=indent
"}}}
" File manipulation {{{
" ignore file names for tab-completion
set wildignore=*.swp,*.bak,*.pyc,*.class,*.log,*.aux,*.pdf
" save
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i
vmap <C-s> <Esc>:w<CR>gv
"}}}
" Searching {{{
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
nnoremap <CR> :nohlsearch<CR><CR>
"}}}
" Color scheme {{{
colors cmccartan
" for colorscheme editing
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"}}}
" Windows and tabs {{{
" split
set splitright
set splitbelow
" tab navigation
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"}}}
" Powerline {{{
set rtp+=/Users/raguay/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1
    python from powerline.vim import setup as powerline_setup
python powerline_setup()
    python del powerline_setup

"    if ! has('gui_running')
"        set ttimeoutlen=10
"        augroup FastEscape
"        autocmd!
"            au InsertEnter * set timeoutlen=0
"            au InsertLeave * set timeoutlen=1000
"        augroup END
"    endif

    set laststatus=2 " Always display the statusline in all windows
    set guifont=Inconsolata\ for\ Powerline:h14
    set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"}}}
" Misc. {{{
" performance
"set lazyredraw
set ttyfast
" auto pairs
let g:AutoPairsFlyMode = 1
" fix meta-keys
set <M-e>=e
imap e <M-e>
set <M-b>=b
imap b <M-b>
" for this file's folds
set modelines=1
"}}} vim:foldmethod=marker:foldlevel=0
