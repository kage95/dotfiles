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
    image = {},
    lazygit = {
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
        Snacks.picker.files({
          hidden = true,
          layout = {
            layout = { width = 0.9, height = 0.9 },
          },
        })
      end,
      desc = "Find Files",
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
          sort_lastused = false,
          layout = {
            layout = {
              backdrop = false,
              width = 0.7,
              min_width = 80,
              height = 0.8,
              min_height = 30,
              box = "vertical",
              border = "rounded",
              title = "{title} {live} {flags}",
              title_pos = "center",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
              { win = "preview", title = "{preview}", height = 0.6, border = "top" },
            },
          },
        })
      end,
      desc = "Buffers",
    },
    {
      "<leader>dd",
      function()
        Snacks.bufdelete()
      end,
      desc = "Delete Buffer",
    },
    {
      "<c-_>",
      function()
        Snacks.terminal()
      end,
      desc = "Toggle Terminal",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer({
          hidden = true,
        })
      end,
      desc = "Explorer",
    },
  },
}
