-- lazy.nvim
return {
	{
		"folke/snacks.nvim",
		--@type snacks.Config
		opts = {
			explorer = {},
			picker = {
				sources = {
					explorer = {
						-- your explorer picker configuration comes here
						-- or leave it empty to use the default settings
						hidden = true,
						ignored = true,
					},
				},
			},
		},
	},
}
