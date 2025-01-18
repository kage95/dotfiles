return {
  "ibhagwan/fzf-lua",
  enabled = false,
  keys = {
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
  opts = function(_, opts)
    local actions = require("fzf-lua.actions")

    opts.winopts = {
      width = 0.9,
      height = 0.9,
    }
    opts.actions = {
      buffers = {
        ["ctrl-d"] = { fn = actions.buf_del, reload = true },
        ["enter"] = actions.file_edit_or_qf,
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
