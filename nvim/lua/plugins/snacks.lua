return {
  "folke/snacks.nvim",
  init = function()
    vim.api.nvim_set_hl(0, "SnacksIndentChunk", { fg = "#806d9c" })
  end,
  opts = {
    dashboard = {
      preset = {
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = vim.fn.isdirectory(".git") == 1,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
      },
    },
    gitbrowse = {},
    statuscolumn = {
      enabled = true,
      folds = {
        open = true,
        git_hl = true,
      },
    },
    terminal = {
      win = {
        position = "float",
        border = "rounded",
      },
    },
    lazygit = {
      enabled = true,
    },
    scroll = {
      enabled = true,
    },
    indent = {
      indent = {
        char = "▏",
      },
      scope = {
        enabled = false,
      },
      chunk = {
        enabled = true,
        char = {
          corner_top = "╭",
          corner_bottom = "╰",
          horizontal = "─",
          vertical = "│",
          arrow = ">",
        },
      },
    },
  },
  keys = {
    {
      "<leader>gL",
      function()
        Snacks.gitbrowse()
      end,
      desc = "Git Browse",
    },
  },
}
