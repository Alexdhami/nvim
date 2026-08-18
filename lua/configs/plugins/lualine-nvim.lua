-- lua/configs/plugins/lualine-nvim
-- Bottom row (status bar) in nvim.
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
