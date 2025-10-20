vim.g.mapleader = " "
vim.g.localleader = " "
-- timeout in ms for key sequences
vim.opt.timeoutlen = 500

vim.keymap.set("i", ";;", "<Esc>", { desc = "Escape insert mode" })

vim.keymap.set("n", "<leader>1", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
--vim.keymap.set("n", "<leader>1", ":NvimTreeFocus<CR>", { desc = "Toggle nvim-tree" })
--vim.keymap.set("n", "<leader>1", ":NvimTreeRefresh<CR>", { desc = "Toggle nvim-tree" })

vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line right" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Indent line left" })
vim.keymap.set("i", "<S-Tab>", "<Esc><<i", { desc = "Indent line left in insert mode" })

-- Telescope
vim.keymap.set('n', '<leader>o', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>p', "<cmd>lua require'telescope.builtin'.git_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader><S-f>', "<cmd>lua require'telescope.builtin'.live_grep({ additional_args = {'--hidden', '--fixed-strings'} })<cr>", { desc = "Telescope Live Grep" })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Telescope Buffers" })

-- Undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  end,
})

