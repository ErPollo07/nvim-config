require("my")
require("config.lazy")


-- Set the tab width to 2
-- and convert the tab in spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Add the number line on the left side
vim.wo.number = true
vim.wo.relativenumber = true

-- Set the color scheme
vim.cmd.colorscheme "catppuccin"

-- Telescope keymap
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Neo-tree keymap
vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", {})

-- Tree-sitter settings
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "c", "lua", "javascript" },
  highlight = { enable = false },
  indent = { enable = true },
})

print("Hello from lua")
