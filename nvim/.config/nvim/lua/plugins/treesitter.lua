return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"go",
				"python",
				"bash",
				"json",
				"javascript",
				"typescript",
				"svelte",
				"c",
				"diff",
				"html",
				"scss",
				"css",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"regex",
				"query",
				"vim",
				"vimdoc",
			})

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local buf = args.buf
					if not pcall(vim.treesitter.start, buf) then
						return
					end
					vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
}
