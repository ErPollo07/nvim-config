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
require("lazy").setup({{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}})

-------------------
-- CUSTOM MACROS --
-------------------

local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg("c", "i-- ")


print("Hello from lua")
