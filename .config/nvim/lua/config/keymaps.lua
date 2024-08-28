-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Leader>e", "<cmd>Neotree reveal_force_cwd right<cr>", { desc = "File explorer" })
vim.keymap.set("n", "<Leader>E", "<cmd>Neotree filesystem toggle<cr>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<Leader>be", "<cmd>Neotree buffers reveal left<cr>", { desc = "Buffer explorer" })
vim.keymap.set("n", "<Leader>bE", "<cmd>Neotree buffers toggle<cr>", { desc = "Buffer explorer" })
