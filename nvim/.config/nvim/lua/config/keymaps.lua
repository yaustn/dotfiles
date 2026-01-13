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

-- File Explorer
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "File [E]xplorer" })

-- Undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle [U]ndoTree" })

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

--[[
-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local opts = { buffer = args.buf }
		-- Navigation
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- Go to declaration
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- Go to implementation
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts) -- Go to type definition
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Find references

		-- Documentation
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Hover documentation
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts) -- Signature help

		-- Actions
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Code actions
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts) -- Format code

		-- Diagnostics
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- Previous diagnostic
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- Next diagnostic
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts) -- Show diagnostic
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts) -- Diagnostic list
	end,
})
]]

-- Harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, { desc = "Harpoon [A]dd" })

vim.keymap.set("n", "<leader><space>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Show Harpoon List" })

vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end, { desc = "Harpoon [1]/2/3/4/5" })
vim.keymap.set("n", "<leader>2", function()
	harpoon:list():select(2)
end, { desc = "which_key_ignore" })
vim.keymap.set("n", "<leader>3", function()
	harpoon:list():select(3)
end, { desc = "which_key_ignore" })
vim.keymap.set("n", "<leader>4", function()
	harpoon:list():select(4)
end, { desc = "which_key_ignore" })
vim.keymap.set("n", "<leader>5", function()
	harpoon:list():select(5)
end, { desc = "which_key_ignore" })
vim.keymap.set("n", "<leader>6", "<C-^>", { desc = "which_key_ignore" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)
