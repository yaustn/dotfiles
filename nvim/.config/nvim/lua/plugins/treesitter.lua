return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = { 
        "lua", 
        "vim", 
        "go", 
        "python",
        "json",
        "javascript",
        "typescript",
        "bash",
        "regex",
        "markdown",
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
