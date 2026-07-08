nnoremap <leader>vgr :vim // **/*<Left><Left><Left><Left><Left><Left>
nnoremap <leader>gr :grep ''<Left>
nnoremap <leader>ct :!ctags -R .<CR>
nnoremap <leader>co :cope<CR>
nnoremap <leader>cl :ccl<CR>

" Search while typing query
set incsearch

if executable('rg')
    set grepprg=rg\ --vimgrep
endif

" Open quickfix
nnoremap <leader>CO :copen<CR>
