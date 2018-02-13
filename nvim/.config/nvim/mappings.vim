" Use space for something usefule
" https://groups.google.com/forum/m/#!msg/vim_dev/fm1a0B77yYo/qZ8WfrYamREJ
let mapleader="\<space>"

" Emmet expand key
let g:user_emmet_expandabbr_key = '<C-e>'

" Sane terminal bindings 
tnoremap <ESC> <C-\><C-n>

" Format Code
nmap <leader>l gg=G``zz

" Tree (uses dirvish)
nmap <leader>t :edit . <cr>

" Quick search
nmap <leader>s :Search <space>

" Fuzzy finder using fzf
nmap <leader>f :Files <cr>

" Buffers using fzf
nmap <leader>b :Buffers <cr>

" Undo Tree
nmap <leader>o :UndotreeToggle <cr>

" Reload from disk
nmap <leader>r :set autoread <cr> :checkt <cr>

" Window resize
map <C-Left> <C-w>5>
map <C-Right> <C-w>5<
map <C-Up> <C-w>5+
map <C-Down> <C-w>5-

" Window navigation
nmap <Left> <C-w><Left>
nmap <Right> <C-w><Right>
nmap <Up> <C-w><Up>
nmap <Down> <C-w><Down>

" Location windows
nmap <Leader>,o :lopen<CR>
nmap <Leader>,c :lclose<CR>
nmap <Leader>,e :ll<CR>
nmap <Leader>,n :lnext<CR>
nmap <Leader>,p :lprev<CR>
