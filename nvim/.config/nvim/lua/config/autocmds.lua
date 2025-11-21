--  See `:help lua-guide-autocommands`
--
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Autosave when switching buffers
vim.api.nvim_create_autocmd("BufLeave", {
	group = vim.api.nvim_create_augroup("autosave_on_switch", { clear = true }),
	callback = function()
		vim.cmd("silent! update")
	end,
})

--[[
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").find_files({find_command={'rg', '--files', '--hidden', '-g', '!.git'}})
      --require("telescope.builtin").find_files()
    end
  end,
})
]]
