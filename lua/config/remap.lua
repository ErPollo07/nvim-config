local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- If noetree doesn't work use this shortcut
-- vim.keymap.set("n", "<leader>E", vim.cmd.Ex)

vim.keymap.set("n", "<leader>L", vim.cmd.Lazy)

-- Remap movment keys
vim.keymap.set("n", "j", "h", opts)
vim.keymap.set("n", "k", "j", opts)
vim.keymap.set("n", "l", "k", opts)
vim.keymap.set("n", ";", "l", opts)

vim.keymap.set("v", "j", "h", opts)
vim.keymap.set("v", "k", "j", opts)
vim.keymap.set("v", "l", "k", opts)
vim.keymap.set("v", ";", "l", opts)

-- Navigation throught nvim panes
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)
vim.keymap.set("n", "<leader>l", "<C-w>l", opts)
vim.keymap.set("n", "<leader>;", "<C-w>h", opts)

-- Disable active highlight
vim.keymap.set("n", "<leader>hl", ":nohlsearch<CR>", opts)

-- Telescope keymap
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Neotree keymap
vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", opts)
vim.keymap.set("n", "<C-h>", ":Neotree filesystem close left<CR>", opts)

