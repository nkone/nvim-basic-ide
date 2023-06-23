local M = {
  "folke/which-key.nvim",
  commit = "5224c261825263f46f6771f1b644cae33cd06995",
  event = "VeryLazy",
}

function M.config()
  require("which-key").setup {}
  local wk = require "which-key"
  -- Terminal mapping
  wk.register({
    ["<leader>$"] = {
      name = "Terminal",
      s = { "<C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>", "Split terminal below" },
      v = { "<C-w>v<C-w>l:terminal<CR>:set nonumber<CR><S-a>", "Split terminal to right" }
    },
})
end

return M
