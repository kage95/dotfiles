local array_settings = {
  both = {
    space_in_brackets = false,
  },
}

return {
  "Wansmer/treesj",
  keys = { "<space>m", "<space>j", "<space>s" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    langs = {
      javascript = {
        array = array_settings,
      },
      typescript = {
        array = array_settings,
      },
      tsx = {
        array = array_settings,
      },
      jsx = {
        array = array_settings,
      },
      ruby = {
        array = array_settings,
        method_parameters = {
          split = {
            separator = ",",
            last_separator = true,
          },
        },
        argument_list = {
          split = {
            separator = ",",
            last_separator = true,
          },
        },
      },
    },
  },
}
