return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      ensure_install = { "javascript" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, -- For Catppuccin
        disable = { "c" },
      },
      indent = { enable = true },
    })
  end,
}
