if exists("b:did_ftplugin")
    finish
endif

nnoremap <leader>K :!termux-open-url https://doc.rust-lang.org/std/string/struct.String.html?search=""<Left>
nnoremap <leader>1 :wa<CR>:!cargo check<CR>
nnoremap <leader>2 :wa<CR>:!cargo clippy --fix --allow-dirty --allow-staged<CR>
nnoremap <leader>3 :w<CR>:!cargo fmt<CR>
nnoremap <leader><leader>1 :wa<CR>:tabnew <Bar> read !cargo check<CR>
nnoremap <leader><leader>2 :wa<CR>:tabnew <Bar> read !cargo clippy --fix --allow-dirty --allow-staged<CR>
