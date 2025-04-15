-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", "<Esc>")

vim.keymap.set("n", "<leader>dte", function()
	require("duckytype").Start("english_common")
end)

vim.keymap.set("n", "<leader>dtr", function()
	require("duckytype").Start("cpp_keywords")
end)

