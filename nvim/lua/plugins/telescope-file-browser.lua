return {
  "nvim-telescope/telescope-file-browser.nvim",
  config = function()
    vim.keymap.set("n", "<leader>e", "<CMD>Telescope file_browser<CR>")

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
          hide_parent_dir = true,
          mappings = {
            ["i"] = {},
            ["n"] = {
              ["n"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["H"] = fb_actions.toggle_hidden,
              ["z"] = fb_actions.goto_cwd,
              ["l"] = "select_default",
              ["I"] = fb_actions.toggle_respect_gitignore,
            },
          },
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
}
