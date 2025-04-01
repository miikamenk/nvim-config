return {
	{
		"numToStr/FTerm.nvim",
		name = "FTerm.LazyGit.nvim",
		config = function()
			local fterm = require("FTerm")
			local lazygit = fterm:new({
				cmd = "lazygit",
			})

			vim.keymap.set("n", "<leader>lg", function()
				lazygit:toggle()
			end, { desc = "Toggle [L]azy[G]it" })
			vim.keymap.set("t", "<leader>lg", function()
				lazygit:toggle()
			end, { desc = "Toggle [L]azy[G]it" })
		end,
	},
}
