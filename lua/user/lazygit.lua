local M = {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  lazy = false,
}

function M.config ()
  require("lazy").setup{}
end

return M
