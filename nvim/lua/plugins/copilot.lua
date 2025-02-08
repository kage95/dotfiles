vim.keymap.set("n", "<leader>so", function()
  require("copilot.suggestion").toggle_auto_trigger()
end, { desc = "toggle copilot suggestion" })

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = false,
      keymap = {
        accept = "<C-l>",
        -- accept_word = false,
        -- accept_line = false,
        next = "<C-]>",
        -- prev = false,
        dismiss = false,
      },
    },
    panel = {
      enabled = true,
    },
  },
}
