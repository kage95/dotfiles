return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      separator_style = "slant",
      indicator = {
        style = "underline",
      },
      truncate_names = false,
      tab_size = 14,
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
