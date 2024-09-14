return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = true,
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      scope = {
        enabled = true,
      },
    })
  end,
}
