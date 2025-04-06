-- VIM OPTIONS

vim.o.tabstop = 2 -- Set the tab size to 2
vim.o.shiftwidth = 2
vim.o.expandtab = true -- Convert tab in space

-- Add the number line on the left side
vim.wo.number = true
vim.wo.relativenumber = true

-- Set the color scheme
vim.cmd.colorscheme "catppuccin"

-- Use the system clipboard
vim.opt.clipboard = "unnamedplus"

