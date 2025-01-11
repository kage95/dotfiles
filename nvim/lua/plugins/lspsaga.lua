vim.keymap.set("n", "<Leader>gp", "<CMD>Lspsaga peek_definition<CR>", { desc = "peek definition" })
return {
  "nvimdev/lspsaga.nvim",
  opts = {
    lightbulb = {
      enable = false,
    },
    definition = {
      height = 0.3,
    },
  },
}
