return {
  "nvimdev/lspsaga.nvim",
  event = "BufWinEnter",
  opts = {
    lightbulb = {
      enable = false,
    },
    definition = {
      height = 0.5,
      width = 0.7,
      keys = {
        edit = "<C-c>o",
        vsplit = "<C-c>v",
        quit = "q",
      },
    },
  },
  keys = {
    {
      "gp",
      "<CMD>Lspsaga peek_definition<CR>",
      desc = "peek definition",
    },
    {
      "<C-s><C-o>",
      "<CMD>Lspsaga outline<CR>",
      desc = "show Outline",
    },
  },
}
