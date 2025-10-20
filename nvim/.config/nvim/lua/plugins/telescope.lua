return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set('n', '<leader>o', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", { desc = "Telescope Find Files" })
      --vim.keymap.set('n', '<leader>p', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", { desc = "Telescope Find Files" })
      vim.keymap.set('n', '<leader><S-o>', "<cmd>lua require'telescope.builtin'.oldfiles({ find_command = {'rg', '--files', '--hidden', '-g', '!.git'} })<cr>", { desc = "Telescope Recent Files" })
      vim.keymap.set('n', '<leader><S-f>', "<cmd>lua require'telescope.builtin'.live_grep({ additional_args = {'--hidden', '--fixed-strings'} })<cr>", { desc = "Telescope Live Grep" })
      --vim.keymap.set('n', '<leader>fg', "<cmd>lua require'telescope.builtin'.live_grep({ additional_args = {'--hidden', '--fixed-strings'} })<cr>", { desc = "Telescope Live Grep" })
      vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Buffers" })

      local telescope = require("telescope")
      local actions = require("telescope.actions")
      telescope.setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
              width = 0.8,
              height = 0.8,
              preview_height = 0.3,
              mirror = true,
            },
          },
          mappings = {
            i = {
              ["<C-q>"] = actions.send_selected_to_qflist,
              ["<C-l>"] = actions.send_to_qflist,
              ["<C-j>"] = actions.move_selection_next,
              ["<S-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<S-k>"] = actions.move_selection_previous,
            },
            n = {
              ["q"] = actions.close,
            },
          },
          prompt_prefix = "🔍 ",
          selection_caret = "❯ ",
          entry_prefix = "  ",
          path_display = { "truncate" },
          file_ignore_patterns = {
            "node_modules",
            ".git",
            ".venv",
            "__pycache__",
            "%.o",
            "%.a",
            "%.so",
          },
        },
      })
    end,
  },
}
