return {
  "ibhagwan/fzf-lua",
  keys = {
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
  opts = function(_, opts)
    local actions = require("fzf-lua.actions")

    vim.api.nvim_set_hl(0, "FzfLuaTitle", { link = "TelescopeTitle" })
    vim.api.nvim_set_hl(0, "FzfLuaBorder", { link = "TelescopeBorder" })

    opts.winopts = {
      width = 0.9,
      height = 0.9,
    }
    opts.actions = {
      buffers = {
        ["ctrl-d"] = { fn = actions.buf_del, reload = true },
      },
    }
    opts.buffers = {
      winopts = {
        width = 1,
        height = 0.4,
        row = 1,
        preview = {
          layout = "horizontal",
        },
      },
    }
  end,
}
