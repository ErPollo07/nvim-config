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
    -- local terminal_cmd = "gnome-terminal -- nvim ~/.config/nvim/" -- for Linux NOT TESTED
    -- local terminal_cmd = "open -a Terminal "`pwd`" && nvim ~/.config/nvim/" -- for MacOS NOT TESTED

    os.execute(terminal_cmd)
  end,
  { desc = "Open the configuration folder" }
)

-- Open a new terminal window in the working dir
vim.api.nvim_create_user_command(
  "OpenTerminal",
  function()
    local pwd = vim.fn.getcwd()

    local term_cmd = "start cmd /k cd " .. pwd

    os.execute(term_cmd)
  end,  { desc = "Open a new terminal window in the working dir" }
)

-- Start the strart script of the project
-- For electron projects
vim.api.nvim_create_user_command(
  "NpmRunStart",
  function()
    local pwd = vim.fn.getcwd()

    local term_cmd = "start cmd /k cd " ..  pwd .. " && npm run start"

    os.execute(term_cmd)
  end,
  { desc = "Run the npm start script" }
)
