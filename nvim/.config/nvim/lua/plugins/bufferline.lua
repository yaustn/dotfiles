return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"ThePrimeagen/harpoon",
		},
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
				numbers = function(opts)
					local ok, harpoon = pcall(require, "harpoon")
					if not ok then
						return ""
					end
					local name = vim.api.nvim_buf_get_name(opts.id)
					if name == "" then
						return ""
					end
					local target = vim.fn.fnamemodify(name, ":p")
					for i, item in ipairs(harpoon:list().items) do
						if vim.fn.fnamemodify(item.value, ":p") == target then
							return tostring(i)
						end
					end
					return ""
				end,
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
