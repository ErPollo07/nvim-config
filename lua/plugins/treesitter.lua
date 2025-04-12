return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true, -- Automatically install missing parsers when entering buffer
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, -- For Catppuccin
      },
      indent = { enable = true },
    })
  end,
}
