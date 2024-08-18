return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = false,
      float = {
        focusable = true,
        border = "rounded",
        source = "always",
      },
    },
    servers = {
      vtsls = {
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
      ruby_lsp = {
        mason = false,
        cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
        root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        filetypes = { "ruby" },
        init_options = {
          enabledFeatures = {
            "documentHighlight",
            "documentSymbols",
            "foldingRanges",
            "selectionRanges",
            "semanticHighlighting",
            "codeActionsResolve",
            "codeActions",
            "diagnostics",
            "definition",
            "completion",
            "completionResolve",
            "inlayHint",
            "codeLens",
            "hover",
            "documentLink",
            "onTypeFormatting",
            "workspaceSymbol",
            "signatureHelp",
            "references",
          },
        },
      },
    },
  },
}
