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

" Set snippet directory
let g:neosnippet#snippets_directory='~/.config/nvim/snippets/'

" Disable default neosnippet snippets
let g:neosnippet#disable_runtime_snippets = {
    \   '_' : 1,
    \   'ts': 1
    \ }

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Add buffers, snippets, and TypeScript completions to deoplete sources
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'neosnippet']
let g:deoplete#sources.ts = ['buffer', 'neosnippet', 'nvim-typescript']

" Deoplete and snippets on TAB
" https://computableverse.com/blog/my-terminal-setup
" https://www.reddit.com/r/neovim/comments/5qj7a7/neosnippets_deoplete/
" Tab FORWARD through deoplete menu
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" Shift+Tab BACKWARD through deoplete menu
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Expands or completes the selected snippet/item in the popup menu
imap <expr><silent><CR> pumvisible() ? deoplete#mappings#close_popup() . "\<Plug>(neosnippet_jump_or_expand)" : "\<CR>"
smap <silent><CR> <Plug>(neosnippet_jump_or_expand)

" Close bottom windows after closing drop down
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Disable automatic comments on next line
au FileType * set fo-=c fo-=r fo-=o
