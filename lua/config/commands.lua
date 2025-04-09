vim.api.nvim_create_user_command(
  "Ping",
  function()
    print("Pong")
  end,
  { desc = "Test command" }
)

-- Open the configuration folder
vim.api.nvim_create_user_command(
  "OpenConfig",
  function()
    local terminal_cmd = "start cmd /k nvim ~/appdata/local/nvim/" -- for Windows
    -- local terminal_cmd = "gnome-terminal -- nvim ~/.config/nvim/" -- for Linux
    -- local terminal_cmd = "open -a Terminal "`pwd`" && nvim ~/.config/nvim/" -- for MacOS NOT TESTED

    os.execute(terminal_cmd)
  end,
  { desc = "Open the configuration folder" }
)

-- Start the strart script of the project
-- For electron projects
vim.api.nvim_create_user_command(
  "NpmRunStart",
  function()
    local term_cmd = "start cmd /k npm run start"

    os.execute(term_cmd)
  end,
  { desc = "Run the npm start script" }
)
