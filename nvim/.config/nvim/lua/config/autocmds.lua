vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").find_files({find_command={'rg', '--files', '--hidden', '-g', '!.git'}})
      --require("telescope.builtin").find_files()
    end
  end,
})
