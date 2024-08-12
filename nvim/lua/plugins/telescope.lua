return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
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
        theme = "dropdown",
        initial_mode = "normal",
        previewer = false,
        layout_config = {
          width = 0.5,
          height = 0.4,
        },
        mappings = {
          n = {
            ["d"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    },
  },
}
