-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")
--map("n", "<leader>w", ":wqa <cr>", { desc = "Save and quit all" })
map("n", "<leader>p", "o<ESC>p", { desc = "Paste in a new line" })
map("n", "<leader>P", "O<ESC>p", { desc = "Paste on the previous line" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save in all mode with control+s" })
map({ "n", "v" }, "<leader>e", "<cmd>Neotree focus<cr>", { desc = "Focus Neotree" })
map({ "n", "i", "v" }, "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "toggle Neotree" })

local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<A-h>", lazyterm, { desc = "Terminal (Root Dir)" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
