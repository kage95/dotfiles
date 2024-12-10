return {
  "akinsho/bufferline.nvim",
  opts = function()
    local colors = require("kanagawa.colors").setup()
    local palette_colors = colors.palette

    return {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "slope",
        sort_by = "directory",
      },
      highlights = {
        buffer_selected = {
          bg = palette_colors.sumiInk4,
        },
        tab_separator_selected = {
          bg = palette_colors.sumiInk4,
        },
        separator_selected = {
          bg = palette_colors.sumiInk4,
        },
        modified_selected = {
          bg = palette_colors.sumiInk4,
        },
        diagnostic_selected = {
          bg = palette_colors.sumiInk4,
        },
      },
    }
  end,
}
