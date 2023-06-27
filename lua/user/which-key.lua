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
    ["<leader>"] = {
      w = {":w<cr>", "write to file"},
      q = {":q<cr>", "quit"},
      x = {":x<cr>", "save and quit"}
    },
    ["<leader>$"] = {
      name = "Terminal",
      s = { "<C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>", "Split terminal below" },
      v = { "<C-w>v<C-w>l:terminal<CR>:set nonumber<CR><S-a>", "Split terminal to right" }
    },
    ["<A-j>"] = {":m '>+1<CR>gv=gv", "Shift down", mode = "v", noremap = true},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", "Shift up", mode = "v", noremap = true,},
    t = {
      name = "Terminal",
      t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop"},
      f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
      h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
      v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
    },
  })
end

return M
