return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      telescope.setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
              width = 0.75,
              height = 0.65,
              mirror = true,
            },
          },
          mappings = {
            i = {
              ["<C-q>"] = actions.send_selected_to_qflist,
              ["<C-l>"] = actions.send_to_qflist,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
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
