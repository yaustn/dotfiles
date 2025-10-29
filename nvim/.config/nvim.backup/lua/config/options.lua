-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- line width
vim.opt.linebreak = true
vim.opt.textwidth = 120

-- colors
vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
