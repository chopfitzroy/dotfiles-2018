if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Theme
" https://trevordmiller.com/projects/nova
Plug 'trevordmiller/nova-vim'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Code completion
Plug 'mattn/emmet-vim'
Plug 'Shougo/neosnippet.vim'
" Omni completion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Add deoplete TypeScript
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
" Language Support (Highlighting)
" Javascript
Plug 'pangloss/vim-javascript'
" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
" JSX (React)
Plug 'mxw/vim-jsx'
" HTML
Plug 'othree/html5.vim'
" CSS
Plug 'hail2u/vim-css3-syntax'
" Formatting
Plug 'sbdchd/neoformat'
Plug 'tommcdo/vim-lion'
" Status bar
Plug 'vim-airline/vim-airline'
" Misc
Plug 'tpope/vim-eunuch'

call plug#end()

" Colorscheme
colorscheme nova

" Editor Settings
source ~/.config/nvim/settings.vim

" Custom commands
source ~/.config/nvim/commands.vim

" Plugin Config
source ~/.config/nvim/config.vim

" Key Mappings
source ~/.config/nvim/mappings.vim
