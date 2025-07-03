
-- Plugin manager setup with lazy.nvim and plugin configs

require("lazy").setup({
  -- File Explorer
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Fuzzy Finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- LSP Support
  "neovim/nvim-lspconfig",
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  "williamboman/mason-lspconfig.nvim",

  -- Autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  -- Treesitter for syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Statusline
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Git integration
  "lewis6991/gitsigns.nvim",

  -- Quick file navigation
  "ThePrimeagen/harpoon",

  -- Theme
  "folke/tokyonight.nvim",

  -- Autopairs for brackets
  "windwp/nvim-autopairs",
})

-- Load plugin-specific configs
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.treesitter")
require("plugins.mason")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.harpoon")
