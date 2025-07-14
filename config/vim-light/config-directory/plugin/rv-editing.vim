set timeoutlen=10000
set nohidden

" Ensure matchit is used for % key
filetype plugin on
packadd! matchit

" Macros and repetition

nnoremap QQ @q
nnoremap Q' :'',.norm @q<CR>
nnoremap QM :'m,.norm @q<CR>
nnoremap QG :g//norm @q<CR>

nnoremap <leader>:' :'',.
nnoremap <leader>:M :'m,.
nnoremap <leader>:G :g//

nnoremap <leader>,' :'',.norm .<CR>test
nnoremap <leader>,M :'m,.norm .<CR>
nnoremap <leader>,G :g//norm .<CR>
