return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = {
      show_buffer_close_icons = false,
      show_close_icon = false,
      truncate_names = false,
      max_name_length = 22,
      tab_size = 10,
    }
  end,
}
