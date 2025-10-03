" enable line numbers
set nu

" spaces instead of tabs
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" set autoindent and smartindent
set ai
set si

" set linebreak to 500 characters
set lbr
set tw=120

" =========
" VimPlug
" =========
"
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugins')
":PlugInstall"
"Plug 'morhetz/gruvbox'
"Plug 'junegunn/seoul256.vim'
Plug 'navarasu/onedark.nvim'

"Plug 'preservim/nerdtree'
"Plug 'preservim/nerdcommenter'
"Plug 'jiangmiao/auto-pairs'

"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" ===========
" Keybindings
" ===========
"
inoremap ;; <Esc>
inoremap jk <Esc>
nmap <C-n> :NERDTreeToggle<CR>

nmap <Tab> >>
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" ===========
" ColorScheme
" ===========
"
" :colorscheme <C-d> shows installed schemes
"
"let g:seoul256_background = 233 " 233 (darkest) ~ 239 (lightest)
"colo seoul256
let g:onedark_config = {'style': 'warm'} "{'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
colorscheme onedark

" =========
" Functions
" =========
"
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Clean trailing whitespace on save
if has("autocmd")
    autocmd BufWritePre * :call CleanExtraSpaces()
endif


