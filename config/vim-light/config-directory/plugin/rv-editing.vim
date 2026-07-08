set timeoutlen=10000
set nohidden

if has("nvim")
    " Inccommand resets `'` marker
    set inccommand=

    " Enhanced diff - slower:
    set diffopt+=internal,algorithm:patience,indent-heuristic
endif

" Show completion in status line
set wildmenu

" Ensure matchit is used for % key
filetype plugin on
packadd! matchit

" Indentation
filetype plugin indent on
set autoindent
set smartindent
" set expandtab tabstop=4 shiftwidth=0

" Automatically load changes
set autoread

" Backspace behavior - modern
set backspace=2

" Macros and repetition

nnoremap QQ @q
nnoremap Q' :'',.norm @q<CR>
nnoremap QM :'m,.norm @q<CR>
nnoremap QG :g//norm @q<CR>

nnoremap <leader>:' :'',.
nnoremap <leader>:M :'m,.
nnoremap <leader>:G :g//

nnoremap <leader>,' :'',.norm .<CR>
nnoremap <leader>,M :'m,.norm .<CR>
nnoremap <leader>,G :g//norm .<CR>

" Git diff
nmap <leader>gd gg:let @9=@%<CR>:difft<CR>:vnew<CR>:set buftype=nofile<CR>:difft<CR>:-1read !git show HEAD:./<C-R>9<C-F>F:b

" DevDocs search
nnoremap \K :!open https://devdocs.io/\#q=

" Super write
cabbrev w!! !sudo tee %
