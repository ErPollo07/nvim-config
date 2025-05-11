local opts = { noremap = true, silent = true }

-- VIM OPTIONS
vim.o.tabstop = 2 -- Set the tab size to 2
vim.o.shiftwidth = 2
vim.o.expandtab = true -- Convert tab in space

-- Use the system clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

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

