-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- File explorer keymaps
vim.keymap.set("n", "<Leader>e", function()
  local manager = require("neo-tree.sources.manager")
  local renderer = require("neo-tree.ui.renderer")

  local state = manager.get_state("filesystem")
  local window_exists = renderer.window_exists(state)
  local curr_buff_name = vim.api.nvim_buf_get_name(0)
  local is_filesystem_focused = string.match(curr_buff_name, "filesystem")

  if window_exists and is_filesystem_focused then
    vim.cmd("Neotree filesystem toggle")
  else
    vim.cmd("Neotree reveal_force_cwd right")
  end
end, { desc = "Open/Close: File explorer" })
vim.keymap.set("n", "<Leader>E", "<cmd>Neotree filesystem toggle<cr>", { desc = "Toggle: File explorer" })

-- Buffers explorer keymaps
vim.keymap.set("n", "<Leader>be", function()
  local manager = require("neo-tree.sources.manager")
  local renderer = require("neo-tree.ui.renderer")

  local state = manager.get_state("buffers")

  local window_exists = renderer.window_exists(state)
  local curr_buff_name = vim.api.nvim_buf_get_name(0)
  local is_filesystem_focused = string.match(curr_buff_name, "buffers")

  if window_exists and is_filesystem_focused then
    vim.cmd("Neotree buffers toggle")
  else
    vim.cmd("Neotree buffers reveal left")
  end
end, { desc = "Open/Close: Buffers explorer" })
vim.keymap.set("n", "<Leader>bE", "<cmd>Neotree buffers toggle<cr>", { desc = "Toggle: Buffer explorer" })
