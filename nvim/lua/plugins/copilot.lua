return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        -- accept = "<Tab>",
        -- accept_word = false,
        -- accept_line = false,
        -- next = "<C-]>",
        -- prev = false,
        -- dismiss = false,
      },
    },
    panel = {
      enabled = true,
    },
  },
}
