vim.api.nvim_create_user_command(
  "Ping",
  function()
    print("pong")
  end,
  { desc = "Test command" }
)

-- Open the configuration folder '~/.config/nvim' or 'C:/appdata/local/nvim'
vim.api.nvim_create_user_command(
  "OpenConfig",
  function()
    -- 1. open a terminal instance
    local terminal_cmd = "start cmd /k nvim C:/users/utente/appdata/local/nvim/"

    os.execute(terminal_cmd)
  end,
  { desc = "Open the configuration folder" }
)

vim.api.nvim_create_user_command(
  "NpmRunStart",
  function()
    local term_cmd = "start cmd /k npm run start"

    os.execute(term_cmd)
  end,
  { desc = "Run the npm start script" }
)
