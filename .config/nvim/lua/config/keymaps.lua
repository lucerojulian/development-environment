-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- File explorer keymaps
keymap.set("n", "<Leader>e", function()
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
keymap.set("n", "<Leader>E", "<cmd>Neotree filesystem toggle<cr>", { desc = "Toggle: File explorer" })

-- Buffers explorer keymaps
keymap.set("n", "<Leader>be", function()
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
keymap.set("n", "<Leader>bE", "<cmd>Neotree buffers toggle<cr>", { desc = "Toggle: Buffer explorer" })

-- FzfLua Search
keymap.set("n", "<Leader>sw", require("fzf-lua").live_grep_resume, { desc = "Word (Resume)" })
keymap.set("n", "<Leader>sW", require("fzf-lua").live_grep, { desc = "Word (Empty)" })
keymap.set("n", "<Leader>sk", require("fzf-lua").keymaps, { desc = "Keymap" })
keymap.set("n", "<Leader>sb", require("fzf-lua").lgrep_curbuf, { desc = "Word in current buffer" })
keymap.set("n", "<Leader>ss", require("fzf-lua").lsp_document_symbols, { desc = "Symbols in current buffer" })

keymap.set({ "n", "v" }, "<Leader>sc", require("fzf-lua").grep_cword, { desc = "Word under cursor" })
keymap.set({ "v" }, "<Leader>sv", require("fzf-lua").grep_visual, { desc = "Current selection" })
-- FzfLua Search file
keymap.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Find file" })
keymap.set("n", "<leader>fb", require("fzf-lua").buffers, { desc = "Find Buffer" })
keymap.set("n", "<leader>fr", require("fzf-lua").registers, { desc = "Registers" })
keymap.set("n", "<leader>fm", require("fzf-lua").marks, { desc = "Marks" })
-- keymap.set("n", "<leader>fs", require("fzf-lua").spell_suggest, { desc = "Spelling Suggestions" })
keymap.set("n", "<leader>fd", require("fzf-lua").lsp_definitions, { desc = "Jump to Definition" })

-- FzfLua Git
keymap.set("n", "<leader>gs", require("fzf-lua").git_status, { desc = "Git Status" })
keymap.set("n", "<leader>gb", require("fzf-lua").git_branches, { desc = "Git Branches" })
keymap.set("n", "<leader>gh", require("fzf-lua").git_stash, { desc = "Git Stash" })
