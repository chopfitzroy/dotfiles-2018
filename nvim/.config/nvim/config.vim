" @TODO this needs to be fixed (can be hardcoded to Nova now)

" Set colorscheme
autocmd ColorScheme nova call s:indent_theme()

" Theme
function! s:indent_theme()
    " Search for color in theme file
    let color = synIDattr(hlID('IncSearch'), 'fg#', 'gui')
    " Set indent colors to match theme color
    execute 'highlight IndentGuidesOdd  guibg='. color .' ctermbg=3'
    execute 'highlight IndentGuidesEven  guibg='. color .' ctermbg=4'
endfunction

" Set terminal buffers title
let g:terminus_use_xterm_title = 1

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

" Fix splits
hi VertSplit ctermbg=NONE guibg=NONE

" Safe saving
au FocusLost * silent! wa

" Enable neosnippet
let g:neosnippet#disable_runtime_snippets = {
            \   '_' : 1,
            \ }

" Set snippet directory
let g:neosnippet#snippets_directory='~/.config/nvim/snippets/'

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Add buffers and tern completions to deoplete sources
let g:deoplete#sources = {}
let g:deoplete#sources = ['buffer', 'neosnippet']

" Close bottom windows after closing drop down
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Disable automatic comments on next line
au FileType * set fo-=c fo-=r fo-=o

" Make netrw (default vim file tree) delete more powerfull
let g:netrw_localrmdir='rm -r'
