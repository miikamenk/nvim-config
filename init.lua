require("config.lazy")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", "<Esc>")

vim.filetype.add({
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
})
