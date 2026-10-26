return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			local function normalize(path)
				if path == nil or path == "" then
					return ""
				end
				return vim.fn.fnamemodify(path, ":p")
			end

			local function is_file_buf(bufnr)
				if not vim.api.nvim_buf_is_valid(bufnr) then
					return false
				end
				if not vim.bo[bufnr].buflisted then
					return false
				end
				if vim.bo[bufnr].buftype ~= "" then
					return false
				end
				local name = vim.api.nvim_buf_get_name(bufnr)
				return name ~= ""
			end

			local function index_of(list, path)
				local target = normalize(path)
				for i, item in ipairs(list.items) do
					if normalize(item.value) == target then
						return i
					end
				end
				return nil
			end

			local refresh_bufferline = vim.schedule_wrap(function()
				pcall(vim.cmd.redrawtabline)
			end)

			local max_slots = 9

			local group = vim.api.nvim_create_augroup("HarpoonMirrorsBufferline", { clear = true })

			local function compact(list)
				local compacted = {}
				local n = 0
				for i = 1, list._length do
					local item = list.items[i]
					if item ~= nil then
						n = n + 1
						compacted[n] = item
					end
				end
				list.items = compacted
				list._length = n
			end

			vim.api.nvim_create_autocmd("BufEnter", {
				group = group,
				callback = function(args)
					if not is_file_buf(args.buf) then
						return
					end
					local list = harpoon:list()
					local name = vim.api.nvim_buf_get_name(args.buf)
					if index_of(list, name) then
						return
					end
					while list._length >= max_slots do
						list:remove_at(max_slots)
						compact(list)
					end
					list:add()
					refresh_bufferline()
				end,
			})

			vim.api.nvim_create_autocmd({ "BufDelete", "BufWipeout" }, {
				group = group,
				callback = function(args)
					local name = vim.api.nvim_buf_get_name(args.buf)
					if name == "" then
						return
					end
					local list = harpoon:list()
					local idx = index_of(list, name)
					if idx == nil then
						return
					end
					list:remove_at(idx)
					compact(list)
					refresh_bufferline()
				end,
			})

			harpoon:extend({
				ADD = refresh_bufferline,
				REMOVE = refresh_bufferline,
				REORDER = refresh_bufferline,
				REPLACE = refresh_bufferline,
			})
		end,
	},
}
