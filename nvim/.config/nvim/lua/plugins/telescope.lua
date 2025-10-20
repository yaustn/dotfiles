return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
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
          ["<C-q>"] = require("telescope.actions").send_selected_to_qflist,
          ["<C-l>"] = require("telescope.actions").send_to_qflist,
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<S-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<S-k>"] = require("telescope.actions").move_selection_previous,
        },
        n = {
          ["q"] = require("telescope.actions").close,
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
  },
}
