return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        max_items = 20,
        selection = "auto_insert",
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