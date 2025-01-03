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
        on_attach = function(client, _bufnr)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.inlayHintProvider = false
        end,
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "non-relative",
            },
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
        filetypes = { "ruby" },
        mason = false,
        cmd = { vim.fn.expand("~") .. "/.rbenv/shims/ruby-lsp" },
      },
    },
  },
}
