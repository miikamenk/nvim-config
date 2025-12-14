-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", "<Esc>")

vim.keymap.set("n", "<leader>twq", "<cmd>write<cr>", { desc = "Write" })
vim.keymap.set("n", "<leader>twa", "<cmd>noa write<cr>", { desc = "Write (noa)" })
