require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  awk_ls = {},
  ast_grep = {},
  bashls = {},
  -- rust_analyzer = {}, rustaceanvim handles this
  lua_language_server = {},
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          typeCheckingMode = "basic",
        },
      },
    },
  },
  jdtls = {
    settings = {
      java = {
        inlayHints = { parameterNames = { enabled = "all" } },
        signatureHelp = { enabled = true },
      },
    },
  },
}

vim.lsp.inlay_hint.enable = true
for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
-- read :h vim.lsp.config for changing options of lsp servers
