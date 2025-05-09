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
    gitbrowse = {
      what = "permalink",
    },
    statuscolumn = {
      enabled = true,
      folds = {
        open = true,
        git_hl = true,
      },
    },
    terminal = {},
    lazygit = {
      enabled = true,
      config = {
        gui = {
          windowSize = "normal",
          nerdFontsVersion = "3",
          border = "single",
          sidePanelWidth = 0.25,
          showCommandLog = false,
          mainPanelSplitMode = "horizontal",
        },
      },
    },
    scroll = {
      enabled = not vim.g.vscode,
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
    picker = {
      formatters = {
        file = {
          truncate = 80,
        },
      },
    },
    explorer = {
      replace_netrw = false,
    },
  },
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.smart({
          layout = {
            layout = { width = 0.9, height = 0.9 },
          },
        })
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>/",
      function()
        Snacks.picker.grep({
          layout = {
            layout = { width = 0.9, height = 0.9 },
          },
        })
      end,
      desc = "Grep",
    },
    {
      "<leader>,",
      function()
        Snacks.picker.buffers({
          layout = { preset = "select" },
        })
      end,
      desc = "Buffers",
    },
    {
      "<leader>gL",
      function()
        Snacks.gitbrowse()
      end,
      desc = "Git Browse",
    },
    {
      "<leader>dd",
      function()
        Snacks.bufdelete()
      end,
      desc = "Delete Buffer",
    },
    {
      "<leader>e",
      function()
        Snacks.picker.explorer({
          layout = {
            preview = "main",
            hidden = {
              "preview",
            },
          },
        })
      end,
      desc = "explorer",
    },
  },
}
