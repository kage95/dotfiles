return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      sorting_strategy = "ascending",
      winblend = 5,
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.6,
          width = 0.9,
          height = 0.9,
        },
      },
      file_ignore_patterns = {
        "bin/",
        "node_modules/",
        "log/",
        ".*%.png",
        ".*%.jpg",
        ".*%.jpeg",
        ".*%.gif",
        ".*%.bmp",
        ".*%.tiff",
        ".*%.svg",
      },
    },
    pickers = {
      buffers = {
        theme = "ivy",
        layout_config = {
          height = 0.5,
        },
        path_display = {
          "filename_first",
        },
        ignore_current_buffer = false,
        mappings = {
          n = {
            ["d"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    },
  },
}
