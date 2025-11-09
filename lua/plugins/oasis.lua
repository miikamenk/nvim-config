return {
	"uhs-robert/oasis.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("oasis").setup({
			style = "cactus", -- Optional: Choose any style like `lagoon` or 'dune'.
		})
	end,
}
