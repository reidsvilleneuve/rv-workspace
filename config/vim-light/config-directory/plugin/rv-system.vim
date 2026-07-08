" Copy current various common texts to system clipboard
nnoremap <silent> <leader>cpp :let @+=@%<CR>:echo "Current file's relative path copied to system clipboard"<CR>
nnoremap <silent> <leader>cpP :let @+=expand('%:p')<CR>:echo "Current file's full path copied to system clipboard"<CR>
nnoremap <silent> <leader>cpl :let @+=@%.' line '.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard"<CR>
nnoremap <silent> <leader>cpr :let @+=expand('%:t').':'.line('.')<CR>:echo "Current file's name and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> <leader>cpR :let @+=@%.':'.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> <leader>cpL :let @+=expand('%:p').' line '.line('.')<CR>:echo "Current file's full path and line number copied to system clipboard"<CR>
nnoremap <silent> <leader>cpn :let @+=expand('%:t')<CR>:echo "Current file's name copied to system clipboard"<CR>
nnoremap <silent> <leader>cpi :let @+='setBreakpoint("'.expand('%:p').'", '.line('.').')'<CR>:echo "Current full path and line number copied to system clipboard for node inspect"<CR>

" System copy + pasting
nnoremap <silent> Y "+y
nnoremap <silent> YY ^"+y$
nnoremap <leader>P "+P
nnoremap <leader>p "+p
vnoremap <leader>p "+p

cabbrev %% <C-R>=expand('%:p:h')<CR>

" Persistent undo. Set `undodir` in system config to customize location
set undofile

" Allow using faster old engine if file takes too long to parse
set regexpengine=0

" Modeline is useful but insecure over the long term
set nomodeline
