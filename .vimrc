" ==============================================================
" ||  BASIC OPTIONS  |||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif
" ==============================================================
" ||  VUNDLE  ||||||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" --------------------------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
" Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'wellle/targets.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'ap/vim-css-color'
Plugin 'unblevable/quick-scope'
Plugin 'vasconcelloslf/vim-interestingwords'
" ==============================================================
" ||  VUNDLE  ||  Syntax Packages  |||||||||||||||||||||||||||||
" ==============================================================
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
" ==============================================================
" ||  VUNDLE  ||  Color Schemes  |||||||||||||||||||||||||||||||
" ==============================================================
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
call vundle#end()
filetype plugin on

" ==============================================================
" ||  INSIDE SETTINGS  |||||||||||||||||||||||||||||||||||||||||
" ==============================================================
set shortmess+=I
set wildmenu
set wildmode=list:longest,full
set shell=/bin/zsh
set completeopt=longest,menuone
" Change <leader>
let mapleader=";"

" ==============================================================
" ||  APPEARANCE  ||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
set background=dark
" colorscheme tomorrow-night-eighties
" colorscheme base16-eighties
colorscheme gruvbox
set guifont=Fira\ Mono:h12
set cmdheight=1
" Don’t add empty newlines at the end of files
set binary
set noeol
" Remove scrollbar from gvim
set guioptions-=r

" ==============================================================
" ||  BEHAVIOR  ||||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
" Get rid of parentheses matching -- just use % when necessary
let loaded_matchparen = 1

" ==============================================================
" ||  AUTO COMMAND  ||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
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

" ==============================================================
" ||  TABS  ||||||||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
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

" ==============================================================
" ||  STATUS LINE  |||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
" set statusline+=%#Question#[\ %-2n]
" set statusline+=%#Directory#\ %F
" Swap to right
" set statusline+=%=
" Curline and count
" set statusline+=%#ErrorMsg#[%l:%L]\ %#MoreMsg#%y
set laststatus=2

" ==============================================================
" ||  Keybindings  |||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
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
" Fix split / window movement
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
" Quickly change to my frequent directories
:noremap <leader>gtw :cd /webroot<CR>
:noremap <leader>gtl :cd /volumes/c/development/icommerce/sites<CR>
:noremap <leader>gtd :cd /volumes/web/icommerce_dev/sites<CR>
:noremap <leader>gtp :cd /volumes/web/icommerce_prod/sites<CR>
" Open netrw in cwd
:noremap <leader>e.  :Ex .<CR>
" Clear matches
:noremap <leader><space> :noh<cr>:call clearmatches()<cr>
" Fix background
:nnoremap <leader>bgl :set background=light<CR>
:nnoremap <leader>bgd :set background=dark<CR>

" ==================================================================================
" ||  PLUGIN SETTINGS  |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ==================================================================================

" ==============================================================
" ||  Unite.vim  |||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
" Yank history
let g:unite_source_history_yank_enable = 1
:nnoremap <leader>y :Unite -quick-match history/yank<cr>
" Quick buffer switch
:noremap <leader>bb :Unite -no-split -quick-match buffer<CR>
" c-p fuzzy finder
let g:unite_enable_start_insert=1
:nnoremap <C-p> :Unite -no-split file_rec/async<cr>
:nnoremap <leader>fo  :Unite -no-split file_rec/async<cr>
:nnoremap <leader>foh :Unite -no-split -default-action=left file_rec/async<cr>
:nnoremap <leader>fol :Unite -no-split -default-action=right file_rec/async<cr>
:nnoremap <leader>fok :Unite -no-split -default-action=above file_rec/async<cr>
:nnoremap <leader>foj :Unite -no-split -default-action=below file_rec/async<cr>
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" ==============================================================
" ||  ctrl-p  ||||||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
" Have ctrl-p work in current directory
" let g:ctrlp_working_path_mode = 0

" ==============================================================
" ||  vim-better-whitespace  |||||||||||||||||||||||||||||||||||
" ==============================================================
" Use vim-better-whitespace to trim whitespace
:noremap <leader>tw :StripWhitespace<CR>

" ==============================================================
" ||  indent-guides  |||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
:nnoremap <leader>ig :IndentGuidesToggle<CR>

" ==============================================================
" ||  Lightline  |||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }
set noshowmode

" ==============================================================
" ||  Quickscope  ||||||||||||||||||||||||||||||||||||||||||||||
" ==============================================================
" Insert into your .vimrc after quick-scope is loaded.
" Obviously depends on <https://github.com/unblevable/quick-scope> being installed.
" Thanks to @VanLaser for cleaning the code up and expanding capabilities to include e.g. `df`
let g:qs_enable = 0
let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]
function! Quick_scope_selective(movement)
    let needs_disabling = 0
    if !g:qs_enable
        QuickScopeToggle
        redraw
        let needs_disabling = 1
    endif
    let letter = nr2char(getchar())
    if needs_disabling
        QuickScopeToggle
    endif
    return a:movement . letter
endfunction
for i in g:qs_enable_char_list
	execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
endfor