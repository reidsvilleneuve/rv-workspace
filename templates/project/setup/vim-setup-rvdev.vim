if ($PWD == $RV_RVDEV_PROJECT_DIR."/repos/rvdev")
    echomsg "Loaded rvdev config"

    nnoremap <leader><leader><leader>1 :w <bar> !./node_modules/.bin/prettier -w %<CR>
    nnoremap <leader><leader><leader>2 :w <bar> !./node_modules/.bin/eslint --fix %<CR>

    nnoremap <leader><leader><leader>gm :echoerr "TODO: Make commit message map"
endif
"
" vim:textwidth=80
