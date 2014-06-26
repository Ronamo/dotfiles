" ==============================
" APPEARANCE
" ==============================
set background=dark
colorscheme base16-eighties
set guifont=Anonymous\ Pro:h16
" ==============================
set nu "Line numbers
syntax enable "Enable syntax highlighting
set hlsearch "Enable search hit highlights
set autoread " Reload externally changed files
set ruler
set cmdheight=2
set hid
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
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap!"Wrap lines
set foldmethod=indent "Folds based on indentation
set foldnestmax=10 "Deepest fold is 10 levels
set nofoldenable "don't fold by default
set foldlevel=1
" PATHOGEN STUFF
execute pathogen#infect()

