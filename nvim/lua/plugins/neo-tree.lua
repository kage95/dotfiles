return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
    },
    window = {
      mappings = {
        ["h"] = "close_node",
        ["l"] = "open",
        ["<space>"] = "none",
        ["Y"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            vim.fn.setreg("+", path, "c")
          end,
          desc = "Copy Path to Clipboard",
        },
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
    event_handlers = {
      {
        event = "file_open_requested",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
