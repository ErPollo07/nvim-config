vim.g.mapleader = " "

vim.keymap.set("n", "<leader>E", vim.cmd.Ex)
vim.keymap.set("n", "<leader>L", vim.cmd.Lazy)
vim.keymap.set("n", "<leader>Q", vim.cmd.q)

-- Remap movment keys
vim.keymap.set("n", "j", "h")
vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "l", "k")
vim.keymap.set("n", ";", "l")

vim.keymap.set("v", "j", "h")
vim.keymap.set("v", "k", "j")
vim.keymap.set("v", "l", "k")
vim.keymap.set("v", ";", "l")

-- Navigation throught nvim panes
vim.keymap.set('n', '<c-k>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-;>', ':wincmd l<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd k<CR>')
