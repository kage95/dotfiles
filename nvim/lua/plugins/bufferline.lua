return {
  "akinsho/bufferline.nvim",
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
