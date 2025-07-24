-- plugins/mason.lua

return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup()

    mason_lspconfig.setup({
      ensure_installed = { "pyright", "lua_ls" }, -- Ensure Pyright and Lua LS are installed
    })
  end,
}
