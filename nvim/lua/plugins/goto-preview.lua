return {
  "rmagatti/goto-preview",
  event = "BufEnter",
  config = function()
    vim.keymap.set("n", "gp", function()
      require("goto-preview").goto_preview_definition({})
    end)

    require("goto-preview").setup({
      post_open_hook = function(buf, win)
        vim.keymap.set("n", "q", function()
          require("goto-preview").close_all_win()
        end, { buffer = buf })

        vim.api.nvim_set_option_value("number", false, { win = win })
        vim.api.nvim_set_option_value("statuscolumn", "", { win = win })
        vim.api.nvim_set_option_value("signcolumn", "no", { win = win })
      end,
      post_close_hook = function(buf)
        vim.api.nvim_buf_del_keymap(buf, "n", "q")
      end,
      preview_window_title = { enable = true, position = "left" },
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      width = 80,
    })
  end,
}
