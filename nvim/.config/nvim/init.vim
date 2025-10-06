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
" call :PlugInstall
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugins')
"Plug 'morhetz/gruvbox'
"Plug 'junegunn/seoul256.vim'
Plug 'navarasu/onedark.nvim'

"Plug 'preservim/nerdcommenter'
"Plug 'jiangmiao/auto-pairs'
"

Plug 'nvim-tree/nvim-web-devicons' "requires non-ascii Nerd Font
Plug 'nvim-tree/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'

"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
" ===========
" Keybindings
" ===========
"
let mapleader = " " "spacebar
set timeoutlen=500

inoremap ;; <Esc>
inoremap jk <Esc>

" (shift)+Tab will move selected line one tab over
nmap <Tab> >>
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" Keybindings
nnoremap <leader>1 :NvimTreeToggle<CR>
"nnoremap <leader>e :NvimTreeFocus<CR>
"nnoremap <leader>r :NvimTreeRefresh<CR>

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

" =============
" File Explorer
" =============
"
lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
EOF

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

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

