-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc")

-- Exit insert mode with 'jj' in insert mode
map("i", "jj", "<Esc>", { noremap = true, silent = true })

-- Exit with 'qq' in normal mode
map("n", "qq", ":q<CR>", { noremap = true, silent = true })

-- Delete without copying to register in visual mode
map("v", "<Del>", '"_d', { noremap = true, silent = true })

map("n", "<leader>ol", "<cmd>Lspsaga outline<CR>", { desc = "show outline" })
