return {
  "saghen/blink.cmp",
  opts = {
    -- sources = {
    --   default = { "snippets", "lsp", "buffer", "path" },
    --   providers = {
    --     snippets = {
    --       score_offset = 10,
    --     },
    --   },
    -- },
    completion = {
      list = {
        max_items = 30,
        selection = {
          auto_insert = true,
          preselect = false,
        },
      },
    },
    keymap = {
      ["<Tab>"] = {
        "select_next",
        "snippet_forward",
        "fallback",
      },
    },
  },
}
