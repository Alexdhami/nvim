-- lua/configs/plugins/lualine-nvim.lua

-- Usecase -->Shows bottom row (status bar) in nvim.

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'wombat', -- matches dark themes well
      -----> Available themes <-----
      --> palenight
      --> wombat
      globalstatus = true,
    }
  }
}
