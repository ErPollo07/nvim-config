require("config.remap")
require("config.lazy")


vim.o.tabstop = 2 -- Set the tab size to 2
vim.o.shiftwidth = 2
vim.o.expandtab = true -- Convert tab in space

-- Add the number line on the left side
vim.wo.number = true
vim.wo.relativenumber = true

-- Set the color scheme
vim.cmd.colorscheme "catppuccin"

-- Telescope keymap
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Neotree keymap
vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<C-h>", ":Neotree filesystem close left<CR>", {})

-------------------
-- CUSTOM MACROS --
-------------------
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg("c", "0i-- ")


print("Hello from lua")
