set nocompatible
filetype plugin on
" Change <leader>
let mapleader=";"
" ==============================
" APPEARANCE
" ==============================
set background=dark
colorscheme base16-eighties
set guifont=Anonymous\ Pro:h16
" AIRLINE
let g:airline_theme="wombat"

" Don’t add empty newlines at the end of files
set binary
set noeol
" Show 'invisible' characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
" Scroll three lines before horizontal border
set scrolloff=3
" Don't reset cursor to start of line when moving
set nostartofline
" Line highlighting
set cursorline
" Line numbers
set number
" Enable syntax highlighting
syntax enable
" Enable search hit highlights
set hlsearch
" Reload externally changed files
set autoread
set ruler
set cmdheight=2
set hidden
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set incsearch
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" ====================
" TABS
" ====================
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
" Enable linebreak
set lbr
set tw=500
" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap!
" Folds based on indentation
set foldmethod=indent
" Deepest fold is 10 levels
set foldnestmax=10
" don't fold by default
set nofoldenable
set foldlevel=1
" ====================
" STATUS LINE
" ====================
set statusline+=%#Question#[\ %-2n]
set statusline+=%#Directory#\ %F
" Swap to right
set statusline+=%=
" Curline and count
set statusline+=%#ErrorMsg#[%l:%L]\ %#MoreMsg#%y
set laststatus=2
" Toggle NERDTree with
:nnoremap <F2> :NERDTreeToggle<CR>
:noremap <leader>t :NERDTreeToggle<CR>
" Easier buffer switching
:nnoremap <F5> :buffers<CR>:buffer<Space>
:noremap <leader>bb :buffers<CR>:buffer<Space>
" Use trailing-whitespace to trim whitespace
:noremap <leader>tw :FixWhitespace<CR>
" PATHOGEN STUFF
execute pathogen#infect()
" Have ctrl-p work in current directory
let g:ctrlp_working_path_mode = 0
" REMOVE SCROLLBAR FROM GVIM
set guioptions-=r
