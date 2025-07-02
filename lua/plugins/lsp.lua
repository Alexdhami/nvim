
-- LSP server configurations

local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
  -- Add any keymaps or settings when LSP attaches to buffer
end

local root_dir = function(fname)
  return vim.loop.cwd()  -- Use current working directory
end

-- Python LSP
lspconfig.pyright.setup({
  on_attach = on_attach,
  root_dir = root_dir,
})

-- Lua LSP
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  root_dir = root_dir,
})

