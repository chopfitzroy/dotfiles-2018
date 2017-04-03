call plug#begin('~/.vim/plugged')

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Code completion
Plug 'mattn/emmet-vim'
Plug 'Shougo/neosnippet.vim'
" Omni completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript'] }
" Code linting
Plug 'w0rp/ale'
" Manipulations
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" History views
Plug 'junegunn/vim-peekaboo'
Plug 'mbbill/undotree'
" Interface
Plug 'nathanaelkane/vim-indent-guides'
Plug 'brettanomyces/nvim-terminus'
Plug 'justinmk/vim-dirvish'
Plug 'romainl/vim-cool'
" Language Support
Plug 'sheerun/vim-polyglot'
Plug 'flowtype/vim-flow'
" Formatting
Plug 'sbdchd/neoformat'
Plug 'tommcdo/vim-lion'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Misc
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-eunuch'

call plug#end()

" Editor Settings
source ~/.config/nvim/settings.vim

" Custom commands
source ~/.config/nvim/commands.vim

" Plugin Config
source ~/.config/nvim/config.vim

" Key Mappings
source ~/.config/nvim/mappings.vim
