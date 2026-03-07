" Copy current various common texts to system clipboard
nnoremap <silent> <leader>cpp :let @+=@%<CR>:echo "Current file's relative path copied to system clipboard"<CR>
nnoremap <silent> <leader>cpP :let @+=expand('%:p')<CR>:echo "Current file's full path copied to system clipboard"<CR>
nnoremap <silent> <leader>cpl :let @+=@%.' line '.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard"<CR>
nnoremap <silent> <leader>cpr :let @+=expand('%:t').':'.line('.')<CR>:echo "Current file's name and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> <leader>cpR :let @+=@%.':'.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> <leader>cpL :let @+=expand('%:p').' line '.line('.')<CR>:echo "Current file's full path and line number copied to system clipboard"<CR>
nnoremap <silent> <leader>cpn :let @+=expand('%:t')<CR>:echo "Current file's name copied to system clipboard"<CR>
nnoremap <silent> <leader>cpi :let @+='setBreakpoint("'.expand('%:p').'", '.line('.').')'<CR>:echo "Current full path and line number copied to system clipboard for node inspect"<CR>
