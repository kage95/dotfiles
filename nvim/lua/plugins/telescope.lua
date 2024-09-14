return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>,",
      "<cmd>Telescope buffers<cr>",
      desc = "Switch Buffer",
    },
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
        },
        path_display = {
          "filename_first",
        },
        ignore_current_buffer = true,
        prompt_position = "bottom",
        mappings = {
          n = {
            ["d"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    },
  },
}
