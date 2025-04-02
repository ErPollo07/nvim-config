return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      window = {
        mappings = {
          ["l"] = "move_up",
          ["k"] = "move_down",
        }
      }
    }
  }
}
