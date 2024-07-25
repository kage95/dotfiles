return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local fb_actions = require("telescope").extensions.file_browser.actions
    require("telescope").setup({
      extensions = {
        file_browser = {
          path = "%:p:h ",
          initial_mode = "normal",
          hijack_netrw = true,
          grouped = true,
          display_stat = false,
          select_buffer = true,
          respect_gitignore = true,
          hide_parent_dir = true,
          mappings = {
            ["i"] = {},
            ["n"] = {
              ["n"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["z"] = fb_actions.goto_cwd,
              ["l"] = "select_default",
            },
          },
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
}
