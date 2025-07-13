-- Mason plugin for managing LSP installations

-- Load the required modules first
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Setup mason
mason.setup()

-- Setup mason-lspconfig and ensure specific LSPs are installed
mason_lspconfig.setup({
  ensure_installed = { "pyright", "lua_ls" },
})
