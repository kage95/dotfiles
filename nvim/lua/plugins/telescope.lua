return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      sorting_strategy = "ascending",
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
  },
}
