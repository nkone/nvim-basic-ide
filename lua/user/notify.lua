local M = {
  "rcarriga/nvim-notify",
  lazy = false,
}

function M.config()
  vim.notify = require "notify"
  vim.notify(tostring(os.date("Today is %A")), vim.log.levels.INFO, {
    title = "Welcome to Neovim",
  })
end

return M
