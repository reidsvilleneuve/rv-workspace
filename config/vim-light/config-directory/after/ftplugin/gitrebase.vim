" Handle interactive rebase per commit message annotations:
nnoremap <leader>r :%s/\vpick (.*) (RVDEV_)(.*):/\L\3 \1 \U\2\3:<CR>
