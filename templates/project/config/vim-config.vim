let s:project_dirs = [
  \ "RVDEVREPLACE_projectdir/repos/rvdev",
  \ "RVDEVREPLACE_projectdir/repos/rvdev2"
\ ]

if index(s:project_dirs, $PWD) >= 0
    echomsg "Loaded RVDEVREPLACE_Name config"

    nnoremap <leader><leader><leader>1 :w <bar> !./node_modules/.bin/prettier -w %<CR>
    nnoremap <leader><leader><leader>2 :w <bar> !./node_modules/.bin/eslint --fix %<CR>

    nnoremap <leader><leader><leader>gm :echoerr "TODO: Make commit message map"
endif
