vim.g.mapleader = " "
vim.g.localleader = " "
-- timeout in ms for key sequences
vim.opt.timeoutlen = 500

vim.keymap.set({"i", "v"}, ";;", "<Esc>", { desc = "Escape insert mode" })

vim.keymap.set("n", "<leader>t", function()
  local nvim_tree = require("nvim-tree.api")
  local view = require("nvim-tree.view")

  if view.is_visible() then
    -- If tree is visible, check if we're in it
    if vim.bo.filetype == "NvimTree" then
      -- We're in the tree, toggle it off
      nvim_tree.tree.toggle()
    else
      -- Tree is open but we're not in it, focus it
      nvim_tree.tree.focus()
    end
  else
    -- Tree is closed, open it
    nvim_tree.tree.toggle()
  end
end, { desc = "Toggle/Focus nvim-tree" })

vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line right" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Indent line left" })
vim.keymap.set("i", "<S-Tab>", "<Esc><<i", { desc = "Indent line left in insert mode" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

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
    -- Navigation
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)           -- Go to definition
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)          -- Go to declaration
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)       -- Go to implementation
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)      -- Go to type definition
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)           -- Find references
    
    -- Documentation
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)                 -- Hover documentation
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)    -- Signature help
    
    -- Actions
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)       -- Rename symbol
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)  -- Code actions
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)        -- Format code
    
    -- Diagnostics
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)         -- Previous diagnostic
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)         -- Next diagnostic
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts) -- Show diagnostic
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts) -- Diagnostic list
  end,
})



