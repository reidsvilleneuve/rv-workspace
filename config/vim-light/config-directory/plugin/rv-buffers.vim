set wildignore+=**/target/**,tags,**/node_modules/**,**/dist/**

" Quick git jump
nnoremap <leader>gj :cexpr(system('git jump --stdout '))<Left><Left><Left>

nnoremap <leader>d :w !diff % -<CR>
nnoremap <leader>e :e %:h/
nnoremap <leader>E :e **/**<Left>
nnoremap <leader><leader>E :cexpr system("rv-fuzzy-find-vim-cexpr ''")<Left><Left><Left>
nnoremap <leader>bl :ls<CR>:b 
nnoremap <leader>bd :bp<CR>:bd #<CR>

nnoremap <leader><leader><leader>E :tabdo window e<CR>

" Window focus
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
