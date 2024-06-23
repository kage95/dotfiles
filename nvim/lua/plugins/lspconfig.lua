return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", "<CMD>Lspsaga hover_doc<CR>", { desc = "Hover" } }
    keys[#keys + 1] = { "<Leader>cd", "<CMD>Lspsaga show_line_diagnostics<CR>", { desc = "Show Line Diagnostics" } }
  end,
  opts = {
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = false,
      severity_sort = false,
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    },
    servers = {
      vtsls = {
        on_attach = function(client, _bufnr)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.inlayHintProvider = false
        end,
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
        },
      },
      eslint = {
        settings = {
          validate = "on",
          -- useFlatConfig = true,
          -- experimental = {
          --   useFlatConfig = nil,
          -- },
        },
      },
      solargraph = {
        autostart = false,
        root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        settings = {
          solargraph = {
            autoformat = false,
            formatting = false,
            completion = true,
            diagnostic = true,
            folding = true,
            references = true,
            rename = true,
            symbols = true,
          },
        },
      },
      ruby_lsp = {
        root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        filetypes = { "ruby" },
        init_options = {
          enabledFeatures = {
            "documentHighlight",
            "documentSymbols",
            "foldingRanges",
            "selectionRanges",
            "semanticHighlighting",
            "codeActions",
            "diagnostics",
            "definition",
            "completion",
            "inlayHint",
            "codeLens",
            "hover",
            "documentLink",
            "onTypeFormatting",
            "workspaceSymbol",
            "signatureHelp",
            "references",
            -- "formatting",
          },
        },
        settings = {},
      },
    },
    setup = {
      eslint = function()
        local formatter = LazyVim.lsp.formatter({
          name = "eslint: lsp",
          primary = false,
          priority = 200,
          filter = "eslint",
        })

        LazyVim.format.register(formatter)
      end,
    },
  },
}
