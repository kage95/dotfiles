return {
  "nvimdev/lspsaga.nvim",
  opts = {
    lightbulb = {
      enable = false,
    },
    definition = {
      height = 0.5,
      width = 0.7,
    },
  },
  keys = {
    {
      "gp",
      "<CMD>Lspsaga peek_definition<CR>",
      desc = "peek definition",
    },
  },
}
