return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  defaults = {
    mappings = {
      i = {
        ["l"] = "previous",
        ["k"] = "next"
      }
    }
  }
} 
