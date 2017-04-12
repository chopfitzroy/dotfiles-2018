" Enable experimental incommand
" https://www.reddit.com/r/neovim/comments/5c086g/inccomand_has_landed/
set inccommand=split

" Syntax
set termguicolors
set background=dark

" Remove split icon
set fillchars+=vert:\ 

" Configure dropdown menu
set completeopt=longest,menuone,preview

" Don't clear commands to clear manually use esc
set notimeout

" Fix safe writes
set backupcopy=yes

" Reload changes outside of nvim
set autoread

" Show cursor at current line
set cursorline

" Enable mouse
set mouse-=a

" Share clipboards
set clipboard+=unnamedplus

" Disable paste mode
set nopaste

" Ignore case when searching
set ignorecase
" Make search case sensitive if a capital is used
set smartcase

" Show relativenumber from current line
set relativenumber
" Show real number at current line
set number

" Splits automatically open below and to right
set splitbelow
set splitright

" Split splits equally
set equalalways

" Tabs
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Fold on indents
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Show command in bottom right
set showcmd

" Retain termail buffers when using :q
" https://github.com/neovim/neovim/issues/5431
set hidden

" Centralize backups
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
if exists("&undodir")
  set undodir=~/.config/nvim/undo
endif
