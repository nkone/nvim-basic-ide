local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "e283ab937e0197b37ec5d8013e49495193407324"
}

function M.config()
  require("nvim-web-devicons").setup {
    override = {
      zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh",
      },
    },
    override_by_extension = {
      ["log"] = {
        icon = "",
        color = "#919c9c",
        name = "Log"
      },
      ["txt"] = {
        icon = "",
        color = "#ffffff",
        name = "Text"
      }
    };
    color_icons = true,
    default = true,
  }
end

return M
