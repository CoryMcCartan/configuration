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
set colorcolumn=81 
"}}}
" Syntax {{{
" filetype based plugins etc
filetype plugin on
" autocomplete
set omnifunc=syntaxcomplete#Complete " autocomplete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" refactoring
nnoremap gr gdva{:s/<C-R>///g<left><left>
nnoremap gR gD:%s/<C-R>///g<left><left>"}]
" syntax highighting
syntax on
"}}}
" Keyboard shortcuts {{{
" replace : with ;
nnoremap ; :
vnoremap ; :
" leader keys
let mapleader=","
let maplocalleader=""
" repeat f / t
nnoremap \ ;
" timeout length for shortcuts
set timeoutlen=600
" moving lines
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv
" exit insert mode
inoremap jk <Esc>
inoremap <C-c> <ESC>
" comment and uncomment
noremap <silent> <leader>c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:s/$/<C-R>=escape(b:comment_ender,'\/*')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:s/<C-R>=escape(b:comment_ender,'\/*')<CR>$<CR>:nohlsearch<CR>
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
set relativenumber
" show filename in title
set title
" ruler (cursor pos in lower right)
set ruler
" folding
nnoremap <space> za
vnoremap <space> za
set foldmethod=indent
set foldlevelstart=1
" hidden characters (whitespace)
set listchars=tab:>.,trail:.,extends:#,nbsp:.
"}}}
" File manipulation {{{
" hide buffers instead of closing
set hidden
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
" Custom Commands {{{
command! Shebang 0put =\"#!/usr/bin/env \"|start!|w|! chmod +x %
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR><CR>:noh<CR><CR>
"}}}
" Autocommands {{{
" commenting
let b:comment_leader = ''
let b:comment_ender = ''
autocmd FileType c,cpp,java,scala,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd FileType html let b:comment_leader = '<!-- ' 
autocmd FileType html let b:comment_ender = ' -->' 
autocmd FileType css let b:comment_leader = '/* ' 
autocmd FileType css let b:comment_ender = ' */' 
" word wrap
autocmd FileType tex setlocal tw=80 	
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
nnoremap <C-h> <C-w>p
nnoremap <C-l> :tabnext<CR>
"}}}
" Powerline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_powerline_fonts = 1
let g:airline_section_warning = ''
"" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
set laststatus=2 " Always display the statusline in all windows
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
