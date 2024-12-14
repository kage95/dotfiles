return {
  "rmagatti/goto-preview",
  event = "BufEnter",
  config = function()
    vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

    require("goto-preview").setup({
      post_open_hook = function(buf)
        vim.keymap.set("n", "q", "<cmd>lua require('goto-preview').close_all_win()<CR>", { buffer = buf })
      end,
      post_close_hook = function()
        local buffer = vim.api.nvim_get_current_buf()
        vim.api.nvim_buf_del_keymap(buffer, "n", "q")
      end,
    })
  end,
}
