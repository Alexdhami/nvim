
-- LSP server configurations

local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Enable enhanced LSP capabilities (completion support)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- LSP attachment hook
local on_attach = function(client, bufnr)
  -- Keymaps for LSP functions
  local bufmap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
  end

  bufmap("n", "gd", vim.lsp.buf.definition)
  bufmap("n", "K", vim.lsp.buf.hover)
  bufmap("n", "<leader>rn", vim.lsp.buf.rename)
  bufmap("n", "<leader>ca", vim.lsp.buf.code_action)
  bufmap("n", "gr", vim.lsp.buf.references)
  bufmap("n", "[d", vim.diagnostic.goto_prev)
  bufmap("n", "]d", vim.diagnostic.goto_next)
  bufmap("n", "<leader>e", vim.diagnostic.open_float)
end

-- Always use current working directory
local root_dir = function(fname)
  return vim.loop.cwd()
end

-- Configure diagnostics appearance
vim.diagnostic.config({
  virtual_text = true,   -- inline errors
  signs = true,          -- signs in gutter
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Python LSP: pyright
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = root_dir,
})

-- Lua LSP: lua_ls
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = root_dir,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
})
