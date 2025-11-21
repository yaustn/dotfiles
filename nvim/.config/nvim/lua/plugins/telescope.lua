return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make", -- only run on install
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			-- See `:help telescope` and `:help telescope.setup()`
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							width = 0.85,
							height = 0.9,
							preview_width = 0.6,
						},
					},
					mappings = {
						i = {
							["<C-j>"] = require("telescope.actions").move_selection_next,
							["<S-j>"] = require("telescope.actions").move_selection_next,
							["<C-k>"] = require("telescope.actions").move_selection_previous,
							["<S-k>"] = require("telescope.actions").move_selection_previous,
							-- enable for quickfix workflow
							-- [[
							["<C-q>"] = require("telescope.actions").send_selected_to_qflist,
							["<C-l>"] = require("telescope.actions").send_to_qflist,
							-- ]]
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
						"go.sum",
						"go.mod",
					},
				},
				-- pickers = {}
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			-- Enable Telescope extensions if they are installed
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			-- See `:help telescope.builtin`
			local builtin = require("telescope.builtin")
			vim.keymap.set(
				"n",
				"<leader>o",
				"<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
				{ desc = "[O]pen Files" }
			)

			vim.keymap.set(
				"n",
				"<leader><S-f>",
				"<cmd>lua require'telescope.builtin'.live_grep({ additional_args = {'--hidden', '--fixed-strings'} })<cr>",
				{ desc = "[F]ind" }
			)
			vim.keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<cr>", { desc = "[S]earch [B]uffers" })

			-- Kickstart default keybinds
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "[ ] Buffers" })

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to Telescope to change the theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- It's also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your Neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
		end,
	},
}
