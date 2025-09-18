return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "snippets", "lsp", "buffer", "path" },
    },
    completion = {
      list = {
        max_items = 30,
        selection = {
          auto_insert = false,
          preselect = true,
        },
      },
      trigger = {
        show_on_trigger_character = true,
      },
    },
    keymap = {
      ["<Tab>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<C-b>"] = { "hide", "fallback" },
      ["<C-f>"] = { "hide", "fallback" },
    },
  },
}
