" Sane terminal bindings 
tnoremap <ESC> <C-\><C-n>

" Format Code
nnoremap <leader>l gg=G``zz

" Tree (uses dirvish)
nnoremap <leader>t :edit . <cr>

" Quick search
nnoremap <leader>s :Search <space>

" Fuzzy finder using fzf
nnoremap <leader>f :Files <cr>

" Buffers using fzf
nnoremap <leader>b :Buffers <cr>

" Undo Tree
nnoremap <leader>o :UndotreeToggle <cr>

" Reload from disk
nnoremap <leader>r :set autoread <cr> :checkt <cr>

" Window resize
nnoremap <C-Left> <C-w>5>
nnoremap <C-Right> <C-w>5<
nnoremap <C-Up> <C-w>5+
nnoremap <C-Down> <C-w>5-

" Window navigation
map <Left> <C-w><Left>
map <Right> <C-w><Right>
map <Up> <C-w><Up>
map <Down> <C-w><Down>

" Snippet completion
imap <C-s>     <Plug>(neosnippet_expand_or_jump)
smap <C-s>     <Plug>(neosnippet_expand_or_jump)
xmap <C-s>     <Plug>(neosnippet_expand_target)

" Location windows
nmap <Leader>,o :lopen<CR>
nmap <Leader>,c :lclose<CR>
nmap <Leader>,e :ll<CR>
nmap <Leader>,n :lnext<CR>
nmap <Leader>,p :lprev<CR>
