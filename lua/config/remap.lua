vim.g.mapleader = " "

-- If noetree doesn't work use this shortcut
-- vim.keymap.set("n", "<leader>E", vim.cmd.Ex)

vim.keymap.set("n", "<leader>L", vim.cmd.Lazy)

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
vim.keymap.set('n', '<c-j>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-;>', ':wincmd l<CR>')

-- Telescope keymap
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Neotree keymap
vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<C-h>", ":Neotree filesystem close left<CR>", {})

-- Create a shortcut to do a comment
-- The shortcut is <leader>c
-- When you press <leader>c it will add a comment based on the current filetype
-- Example: if you are in a python file it will add a # at the beginning of the line

vim.keymap.set("n", "<leader>c", function()
  local filetype = vim.bo.filetype
  print(filetype)

  local comment_sintax = {
    ["lua"] = "--",
    ["python"] = "#",
    ["javascript"] = "//",
    ["c"] = "//",
    ["cpp"] = "//",
    ["java"] = "//",
    ["html"] = "<!-- -->",
    ["css"] = "/* */",
    ["shell"] = "#",
    ["sql"] = "--",
    ["ruby"] = "#",
    ["go"] = "//",
    ["rust"] = "//"
  }

  local commentstring = comment_sintax[filetype]

  if commentstring == nil then
    print("No comment syntax found for this filetype")
    return
  else
    print("Comment syntax found for " .. filetype .. ": " .. commentstring)
  end

  local line = vim.api.nvim_get_current_line()
  local new_line = line .. " " .. commentstring
  vim.api.nvim_set_current_line(new_line)
end, {})
