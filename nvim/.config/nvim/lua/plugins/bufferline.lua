return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "VeryLazy",
		keys = {
			{ "<leader>w", "<cmd>bdelete<cr>", desc = "Close buffer" },
		},
		opts = {
			options = {
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = true,
				show_close_icon = true,
				separator_style = "slant",
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
			},
			highlights = {
				buffer_selected = {
					underline = true,
					bold = true,
				},
				buffer_visible = {
					underline = true,
				},
			},
		},
	},
}
