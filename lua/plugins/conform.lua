-- plugins/conform.lua

return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "black" },
        lua = { "stylua" },
        -- add more filetypes as needed
      },
      -- Optional: run formatter on save
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
    })
  end,
}

