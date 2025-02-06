require'mason'.setup{}
require'mason-lspconfig'.setup({
    ensure_installed = {
        "clangd",
        "lua_ls",
        "pyright",
        "gopls"
    },
})

-- clangd lsp
require'lspconfig'.clangd.setup({
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "h", "hpp" },
  init_options = {
    clangdFileStatus = true,
  },
})

-- lua lsp
require'lspconfig'.lua_ls.setup({})

-- python lsp
require'lspconfig'.pyright.setup({})

-- golang lsp
require'lspconfig'.gopls.setup({})
