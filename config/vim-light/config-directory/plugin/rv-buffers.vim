set wildignore+=target/**,tags

nnoremap <leader>d :w !diff % -<CR>
nnoremap <leader>e :e %:h/
nnoremap <leader>E :e **/**<Left>
nnoremap <leader>bl :ls<CR>:b 
nnoremap <leader>bd :bp<CR>:bd #<CR>

" Window focus
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
