-- See `:help vim.keymap.set()`

-- another way to escape instead of pressing esc
vim.keymap.set({ "i", "v" }, ";;", "<Esc>", { desc = "Escape insert mode" })
-- exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line right" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Indent line left" })
vim.keymap.set("i", "<S-Tab>", "<Esc><<i", { desc = "Indent line left in insert mode" })

-- move around lines in visual mode with Shift+<jk>
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center cursor when scrolling page up/down and also when searching next/prev
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Telescope
vim.keymap.set(
	"n",
	"<leader>o",
	"<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
	{ desc = "Telescope Find Files" }
)
vim.keymap.set(
	"n",
	"<leader><S-f>",
	"<cmd>lua require'telescope.builtin'.live_grep({ additional_args = {'--hidden', '--fixed-strings'} })<cr>",
	{ desc = "Telescope Live Grep" }
)
vim.keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<cr>", { desc = "Telescope Buffers" })

-- Use Ctrl+<hjkl> to switch between windows
--vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
--vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
--vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
--vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
-- Use Ctrl+Shift+<hjkl> to move windows
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
