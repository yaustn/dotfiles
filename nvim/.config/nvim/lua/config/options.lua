-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- tabs
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true

-- sign column to the left of the line numbers for visual markers and diagnostics
vim.o.signcolumn = "yes"

-- line width
vim.o.textwidth = 120
vim.o.linebreak = true
vim.o.breakindent = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sets how neovim will display certain whitespace characters in the editor.
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"
-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Show which line your cursor is on
vim.o.cursorline = true

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Decrease update time for swp files
vim.o.updatetime = 250

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- "a" for all modes
vim.o.mouse = "a"

-- already in statusline
vim.o.showmode = false

-- Save undo history
--vim.opt.swapfile = false
--vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.g.have_nerd_font = true
