return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = false,
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      scope = {
        enabled = false,
      },
    })
  end,
}
