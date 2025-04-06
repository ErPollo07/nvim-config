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
    local config_folder = vim.fn.has("win32") == 1 and "C:/appdata/local/nvim" or "~/.config/nvim"

    -- 2. navigate to the configuration folder open it in nvim
    local terminal_cmd = vim.fn.has("win32") == 1 and "start cmd.exe /K cd " .. config_folder .. " && nvim ." or "cd " .. config_folder .. " && exec $SHELL -i && nvim ."

    vim.cmd("term " .. terminal_cmd)
  end,
  { desc = "Open the configuration folder" }
)
