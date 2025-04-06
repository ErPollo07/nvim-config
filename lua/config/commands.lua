
vim.api.nvim_create_user_command(
  "Ping",
  function()
    print("pong")
  end,
  { desc = "Test command" }
)

-- Open the configuration folder '~/.config/nvim' or 'C:/appdata/local/nvim'
vim.api.nvim_create_user_command(
  "Ping",
  function()
    print("pong")
  end,
  { desc = "Test command" }
)
