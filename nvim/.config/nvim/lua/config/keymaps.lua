vim.g.mapleader = " "
vim.g.localleader = " "
-- timeout in ms for key sequences
vim.opt.timeoutlen = 500

vim.keymap.set("i", ";;", "<Esc>", { desc = "Escape insert mode" })
--vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode" })

vim.keymap.set("n", "<leader>1", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
--vim.keymap.set("n", "<leader>1", ":NvimTreeFocus<CR>", { desc = "Toggle nvim-tree" })
--vim.keymap.set("n", "<leader>1", ":NvimTreeRefresh<CR>", { desc = "Toggle nvim-tree" })
vim.keymap.set("n", "<leader>p", ":Ex")

vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line right" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Indent line left" })
vim.keymap.set("i", "<S-Tab>", "<Esc><<i", { desc = "Indent line left in insert mode" })

-- Telescope
vim.keymap.set('n', '<leader>o', '<cmd>Telescope find_files<cr>', { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>', { desc = "Telescope Find Files" })
vim.keymap.set('n', '<D-o>', '<cmd>Telescope find_files<cr>', { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader><S-p>', '<cmd>Telescope oldfiles<cr>', { desc = "Telescope Recent Files" })
--vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = "Live grep" })
--vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Buffers" })
--vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = "Help tags" })


