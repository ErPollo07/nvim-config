return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000, 
  config = function()
    vim.cmd.colorscheme "catppuccin"

    require("catppuccin").setup({
      flavor = "mocha",
      no_italic = true,
      integrations = {
        treesitter = true
      }
    })
  end
};
