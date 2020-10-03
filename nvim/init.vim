
" =========
" VimPlug
" =========
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugins')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" See all colorschemes with :colorscheme <C-d>
"Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

call plug#end()

" ===========
" Keybindings
" ===========
inoremap ;; <Esc>
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
let g:seoul256_background = 236 " 233 (darkest) ~ 239 (lightest)
colo seoul256

set nu
set expandtab
set shiftwidth=4

