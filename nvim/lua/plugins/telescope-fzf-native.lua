return {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = "make",
  config = function()
    require("telescope").setup({
      extensions = {
        file_browser = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      },
    })
    require("telescope").load_extension("fzf")
  end,
}
