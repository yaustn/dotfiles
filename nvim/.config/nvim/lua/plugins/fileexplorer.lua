return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    sort_by = "case_sensitive",
    view = {
      width = 25,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
    update_focused_file = {
      enable = true,
      update_root = false,
    },
  },
}
