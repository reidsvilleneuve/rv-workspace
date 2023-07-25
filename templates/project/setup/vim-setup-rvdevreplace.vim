let s:project_dirs = [
  \ $RV_RVDEVREPLACE_PROJECT_DIR."/repos/rvdevreplace",
  \ $RV_RVDEVREPLACE_PROJECT_DIR."/repos/rvdevreplace2"
\ ]

if index(s:project_dirs, $PWD) >= 0
    echomsg "Loaded rvdevreplace config"

    nnoremap <leader><leader><leader>1 :w <bar> !./node_modules/.bin/prettier -w %<CR>
    nnoremap <leader><leader><leader>2 :w <bar> !./node_modules/.bin/eslint --fix %<CR>

    nnoremap <leader><leader><leader>gm :echoerr "TODO: Make commit message map"
endif

" vim:textwidth=80
