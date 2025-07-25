-- plugins/colorscheme.lua

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,                             -- load immediately
    priority = 1000,                          -- make sure it's loaded before others
    config = function()
      vim.cmd("colorscheme tokyonight-night") -- or "tokyonight", "storm", etc.
    end,
  },

  -- Add other optional themes below ↓
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true, -- optional fallback or for switching later
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
  },
}
