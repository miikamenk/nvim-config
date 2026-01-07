return {
	"folke/snacks.nvim",
	--- Updated this section to align with approach taken in other LazyVim snacks configs
	---@diagnostic disable-next-line: unused-local
	opts = function(_, opts)
		local snacks = require("snacks")

		opts.styles = {
			snacks_image = {
				relative = "editor",
				col = -1,
			},
		}

		opts.image = {
			enabled = true,
			doc = {
				-- render image inline only when using "skitty" mode
				inline = vim.g.neovim_mode == "skitty" and true or false,
				float = true,
				max_width = vim.g.neovim_mode == "skitty" and 5 or 60,
				max_height = vim.g.neovim_mode == "skitty" and 2.5 or 30,
			},
		}

		if pcall(require, "copilot") then
			vim.g.snacks_copilot_enabled = false
			require("copilot.command").disable()
			snacks
				.toggle({
					name = "Toggle (Copilot Completion)",
					color = {
						enabled = "azure",
						disabled = "orange",
					},
					get = function()
						return vim.g.snacks_copilot_enabled
					end,
					set = function(state)
						if state then
							vim.g.snacks_copilot_enabled = true
							require("copilot.command").enable()
						else
							vim.g.snacks_copilot_enabled = false
							require("copilot.command").disable()
						end
					end,
				})
				:map("<leader>tc")
		end
	end,
}
