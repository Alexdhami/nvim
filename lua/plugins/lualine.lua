-- plugins/lualine.lua

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        section_separators = "",
        component_separators = "",
      },
    })
  end,
}

