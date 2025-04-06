return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = "mocha",
      integrations = {
        treesitter = true
      },
      styles = {
        comments = {}, -- Tell catppuccin that in I don't want any effect put "italic" to change the comment to italic
        conditionals = {},
        loops = {},
      }
    })

    vim.cmd.colorscheme "catppuccin"
  end,
};
