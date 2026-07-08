syntax on
set statusline=%<%f\ (%{bufnr('%')})\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Whitespace
set listchars=eol:↵,tab:>-,trail:~,extends:>,precedes:<
set list
set showbreak=↪

" Highlight search queries
set hlsearch

" Show count number in status bar
set shortmess-=S

nnoremap <silent> g<Space> :noh<CR>

color industry

let g:netrw_banner=0
