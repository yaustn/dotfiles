return {
	{
		"stevearc/oil.nvim",
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		opts = {
			default_file_explorer = true, -- Replaces netrw
			columns = {
				"icon",
			},
			view_options = {
				show_hidden = true,
			},
		},
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<leader>E", "<cmd>NvimTreeToggle<cr>", desc = "Toggle nvim-tree" },
		},
		opts = {
			view = { width = 35 },
			renderer = { group_empty = true },
			filters = { dotfiles = false },
		},
	},
}
