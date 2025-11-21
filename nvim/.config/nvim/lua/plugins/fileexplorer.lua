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
}
