" BASIC OPTIONS ===============================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Editor plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'wellle/targets.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/unite.vim'
Plugin 'ap/vim-css-color'
" Syntax Packages
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'tpope/vim-markdown'
Plugin 'wavded/vim-stylus'
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'
" Color Schemes"
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
call vundle#end()
filetype plugin on

set shortmess+=I
set wildmenu
set wildmode=list:full
set shell=/bin/zsh
" Change <leader>
let mapleader=";"
" APPEARANCE ==================================================
set background=dark
" colorscheme tomorrow-night-eighties
" colorscheme base16-eighties
colorscheme dracula
set guifont=Fira\ Mono\ OT:h14
set cmdheight=1
" Don’t add empty newlines at the end of files
set binary
set noeol
" Remove scrollbar from gvim
set guioptions-=r
" BEHAVIOR ==================================================
" Get rid of parentheses matching -- just use % when necessary
let loaded_matchparen = 1
" AUTO COMMANDS
" Save when focus lost
au FocusLost * :wa
" Keep splits equal
au VimResized * exe "normal! \<c-w>="
" Show 'invisible' characters
set nolist
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:>,precedes:<
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
set hidden
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set incsearch
set showmatch
set mat=2
set noerrorbells
set visualbell
set t_vb=
set tm=500
" TABS ========================================================
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
" STATUS LINE ==================================================
" set statusline+=%#Question#[\ %-2n]
" set statusline+=%#Directory#\ %F
" Swap to right
" set statusline+=%=
" Curline and count
" set statusline+=%#ErrorMsg#[%l:%L]\ %#MoreMsg#%y
set laststatus=2
" KEYBINDINGS ==================================================
"Better line movement
:nnoremap H ^
:nnoremap L g_
" Remap jk to escape
:inoremap jk <ESC>
" Let Y yank to end of line instead of yanking line as would yy
:nnoremap Y y$
" Bubble line up and down
:nnoremap <C-Up> ddkP
:nnoremap <C-Down> ddp
:vnoremap <C-Up> xkP`[V`]
:vnoremap <C-Down> xp`[V`]
" Quickly change to my frequent directories
:noremap <leader>gtw :cd /webroot<CR>
:noremap <leader>gtl :cd /volumes/c/development/icommerce/sites<CR>
:noremap <leader>gtd :cd /volumes/web/icommerce_dev/sites<CR>
:noremap <leader>gtp :cd /volumes/web/icommerce_prod/sites<CR>
" Open netrw in cwd
:noremap <leader>e.  :Ex .<CR>
" Toggle NERDTree with
:noremap <leader>t :NERDTreeToggle<CR>
" Easier buffer switching
:noremap <leader>bb :buffers<CR>:buffer<Space>
" Use vim-better-whitespace to trim whitespace
:noremap <leader>tw :StripWhitespace<CR>
" Clear matches
:noremap <leader><space> :noh<cr>:call clearmatches()<cr>
" Fix background
:nnoremap <leader>bgl :set background=light<CR>
:nnoremap <leader>bgd :set background=dark<CR>
" Indent Guides plugin
:nnoremap <leader>ig :IndentGuidesToggle<CR>
" PLUGINS ======================================================
" Have ctrl-p work in current directory
let g:ctrlp_working_path_mode = 0
" AIRLINE
" let g:airline_theme="wombat"
" LIGHTLINE
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }