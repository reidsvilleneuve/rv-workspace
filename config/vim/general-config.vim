"*********"
" Visuals "
"*********"

syntax on
set statusline=%<%f\ (%{bufnr('%')})\ %h%m%r%=%-14.(%l,%c%V%)\ %P
colorscheme PaperColor

" Active window adjustments

function! WindowEnterHighlight()
  set cursorline
  " Commented out since colorscheme is a bit aggressive:
  " set colorcolumn=80,120
endfunction

function! WindowLeaveHighlight()
  set nocursorline
  " Commented out since colorscheme is a bit aggressive:
  " set colorcolumn=0
endfunction

augroup AutoActionsVisual
  autocmd!
  " Commented out since colorscheme is a bit aggressive:
  " autocmd BufRead,BufNewFile * setlocal spell spelllang=en_us
  autocmd BufEnter,BufNewFile,BufRead * set mouse=
  autocmd InsertEnter,InsertLeave * set cul! " Remove line in insert mode
  autocmd WinEnter * call WindowEnterHighlight()
  autocmd WinLeave * call WindowLeaveHighlight()
  " Not working. Perhaps see:
  "   - https://github.com/itchyny/vim-qfedit/issues/3
  "   - https://vi.stackexchange.com/questions/14065/autocmd-with-quickfix-window
  " autocmd BufEnter,BufNewFile,BufRead,WinEnter *
  "   \ if &buftype == 'quickfix'
  "       \ setlocal concealcursor=""
  "       \ | setlocal conceallevel=2
  "       \ | syntax match Entity /\/Users\/reid\.villeneuve\/projects/ conceal
  "   \ | endif
augroup END

call WindowEnterHighlight()

" Whitespace

set listchars=eol:↵,tab:>-,trail:~,extends:>,precedes:<
set list
set showbreak=↪

"*********"
" Editing "
"*********"

" Window focus
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Quick yanks and pastes to/from system clipboard
nnoremap Y "+y
nnoremap YY ^"+y$
vnoremap Y "+y
nnoremap <leader>P "+P
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Quick line commands toward mark `m`
nnoremap <leader>q :'m,.

" Quick macro replay
nnoremap Q @q
nnoremap <leader>Q :'m,.norm @q<CR>
vnoremap <leader>Q :'<,'>norm @q<CR>
nnoremap <leader><leader>Q :g//norm @q<CR>

" Quick . replay
nnoremap <leader>. :'m,.norm .<CR>
vnoremap <leader>. :'<,'>norm .<CR>
nnoremap <leader><leader>. :g//norm .<CR>

" Newline-ify a ', '-separated list
nnoremap <leader>,, :s/, /,\r/g<CR>='.:noh<CR>

" Expand %% to path of current file in command mode
cabbrev %% <C-R>=expand('%:p:h')<CR>

" Open current directory in netrw
nnoremap <leader>e :e <C-R>=expand('%:p:h')<CR>/
nnoremap <leader>E :e <C-R>+<CR>

" Diff buffer and saved file
nnoremap <leader>d :w !diff "%" -<CR>

" Ensure matchit is used for % key
filetype plugin on
packadd! matchit

" Create HTML tag from Word under the cursor
nnoremap <leader>tc viWo<Esc>yEi<<Esc>Ea></<C-R>0><Esc>F>

" Stop <leader> press from timing out:
set timeoutlen=9999

"********"
" Search "
"********"

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

" Commented out: FzyCommand doesn't seem to be working
" nnoremap <leader>f :call FzyCommand("git ls-files", ":e")<cr>

" RVDEV: In the shell, `rg '\w'` stops a pipe on a blank string via a non-0
" exit code. It's not working here. We want this in order to not overwrite the
" system clipboard if we don't choose a file:
" Commented out for tmux solution:
" nnoremap <leader><leader>f <C-w>s :terminal git ls-files \| awk '!/^\.yarn/' \| fzy  \| rg '\w' \| tr -d '\n' \| pbcopy<CR>A

" Text search
nnoremap <leader>f :grep 

" Highlight search terms
set hlsearch

" Search while typing in search query
set incsearch

" Clear last search highlighting
nnoremap <silent> g<Space> :noh<cr>

" Use Ripgrep for :grep if available
if executable('rg')
  set grepprg=rg\ --vimgrep
endif

" Fuzzy find open file
" Commented out: using fzy currently (See above)
" nnoremap <leader>f :find **/**<Left>
set wildignore=**/node_modules/**,**/target/**

" Cause internal search features to search from current directory only:
set path=,,

" Current file search into quickfix:
nnoremap <leader><leader>P :cexpr []<CR>:g//caddexpr expand("%") . ":" . line(".") .  ":" . getline(".")<CR>:cope<CR>

"*****"
" Git "
"*****"

" Fixup all commits in interactive rebase
nnoremap <leader>R ggj<C-v>}kecf<Esc>

" Handle interactive rebase per commit message annotations:
nnoremap <leader>r :%s/\vpick (.*) (RVDEV_)(.*):/\L\3 \1 \U\2\3:<CR>

" Quick commit message with story number inclusion
nnoremap <leader><leader>m /RVDEV<Esc>2yt-ggpA: <Esc>:noh<CR>:startinsert!<CR>

" Quick commit message header annotations
nnoremap <leader>m ggIRVDEV_FIXUP: <Esc>:startinsert!<CR>

" Quick git diff
nmap <leader>gd \cp<CR>:difft<CR>:vnew<CR>:difft<CR>:-1read !git show develop:./<C-R>+<C-F>F:b

"********"
" System "
"********"

" Copy current various common texts to system clipboard
nnoremap <silent> \cp :let @+=@%<CR>:echo "Current file's relative path copied to system clipboard"<CR>
nnoremap <silent> \cP :let @+=expand('%:p')<CR>:echo "Current file's full path copied to system clipboard"<CR>
nnoremap <silent> \cl :let @+=@%.' line '.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard"<CR>
nnoremap <silent> \cr :let @+=expand('%:t').':'.line('.')<CR>:echo "Current file's name and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> \cR :let @+=@%.':'.line('.')<CR>:echo "Current file's relative path and line number copied to system clipboard for Chrome devtools"<CR>
nnoremap <silent> \cL :let @+=expand('%:p').' line '.line('.')<CR>:echo "Current file's full path and line number copied to system clipboard"<CR>
nnoremap <silent> \cn :let @+=expand('%:t')<CR>:echo "Current file's name copied to system clipboard"<CR>
nnoremap <silent> \ci :let @+='setBreakpoint("'.expand('%:p').'", '.line('.').')'<CR>:echo "Current full path and line number copied to system clipboard for node inspect"<CR>

" Write as superuser
cabbrev w!! !sudo tee %

" Persistant undo
set undofile " See `set undodir?` for location

"*******************"
" Buffer Management "
"*******************"

" Set tab-character display length defaults
set expandtab tabstop=2 shiftwidth=0

" No non-active unsaved files
set nohidden

" See open buffers and await selection
nnoremap <leader>bl :ls<CR>:b<Space>

" Delete current buffer and go to previous file
nnoremap <leader>bd <C-^>:bd #<CR>

" Uncomment when debugging: Nvim adds +F, which stops some filetype autocmd
"   functionality mostly related to messeging from working. The Nvim Default
"   is "filnxtToOF"
" set shortmess="filnxtToO"

augroup AutoActionsBufferManagement
  autocmd!
  autocmd FileType netrw setl bufhidden=delete " Stops netrw uncloseable bug
  autocmd FileType markdown setl tabstop=4
  " Work-around for omnifunc not setting for HTML files:
  autocmd FileType html setl omnifunc="v:lua.vim.lsp.omnifunc"

  " Trigger `autoread` when files changes on disk
  "   - https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
  "   - https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI,VimResume *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

  " Notification after file change
  "   - https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
  autocmd FileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

  " `silent!` stops unnamed buffers from throwing errors
  autocmd FocusLost,VimSuspend * silent! :wa
augroup END

" Buffer-only session save / load
nnoremap <silent> \ss :set sessionoptions=buffers,tabpages<CR>:mksession!<CR>:echo "Session saved"<CR>
nnoremap <silent> \sl :so Session.vim<CR>:echo "Session loaded"<CR>

"************"
" LSP config "
"************"

if has('nvim')
  let config_path = expand('<sfile>:p:h')
  exec 'source ' . config_path . '/lsp-dependencies.lua'

  " Disable scratch window upon Omnicomplete key - default is `menu,preview`:
  set completeopt=menu

  " Consider moving these to the lua file above. They are here for now for
  " consistency's sake:
  nnoremap <leader>lR :LspRestart<CR>
  nnoremap <leader>ln :lua vim.diagnostic.goto_next()<CR>
  nnoremap <leader>lp :lua vim.diagnostic.goto_prev()<CR>
  nnoremap <leader>lH :lua vim.diagnostic.open_float()<CR>
  nnoremap <leader>lc :lua vim.diagnostic.setqflist()<CR>
  nnoremap <leader>ll :lua vim.lsp.
  nnoremap <leader>la :lua vim.lsp.buf.code_action()<CR>
  nnoremap <leader>lh :lua vim.lsp.buf.hover()<CR>
  nnoremap <leader>lr :lua vim.lsp.buf.references()<CR>
  nnoremap <leader>le :lua vim.lsp.buf.rename()<CR>
endif
