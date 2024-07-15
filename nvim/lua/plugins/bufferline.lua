return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      indicator = {
        style = "underline",
      },
    },
    highlights = {
      buffer_selected = {
        fg = "#fffafa",
        bold = false,
        italic = true,
      },
      background = {
        fg = "#dcdcdc",
      },
    },
  },
}
