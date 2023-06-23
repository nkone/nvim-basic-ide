local M = {
  "iamcco/markdown-preview.nvim",
  lazy = false,
  build = function()
    vim.fn["mkdp#util#install"]()
  end
}

vim.g.mkdp_auto_close = 0
vim.g.mkdp_auto_start = 0
vim.g.mkdp_theme = 'dark'

return M
