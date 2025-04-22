-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.filetype.add({
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
})

-- my_nvim_path/lua/options.lua
if vim.fn.has("win32") == 1 then -- only windows
	vim.g.undotree_DiffCommand = vim.fn.stdpath("config") .. "\\bin\\diff.exe"
end
