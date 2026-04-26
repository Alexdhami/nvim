return {
    -- Comment.nvim plugin for commenting 
    {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },

    -- live-review for html pages.
    { 'brianhuster/live-preview.nvim' },

    -- Leap
    {
        url = "https://codeberg.org/andyg/leap.nvim",
        name = "leap.nvim", -- optional but recommended
        config = function()
            require("leap").setup({
                labels = "sdjfkl",
            })

            vim.keymap.set(
                { "n", "x", "o" },
                "s",
                "<Plug>(leap)",
                { desc = "Leap Search (Window)" }
            )
        end,
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- Harpoon
    { "theprimeagen/harpoon" },

    -- Undotree
    { "mbbill/undotree" },

    -- LSP Zero
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- LSP
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Autocomplete
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "saadparwaiz1/cmp_luasnip",

            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
    },

    -- Tree-sitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- require("nvim-treesitter.configs").setup({
            --     highlight = {
            --         enable = true,
            --     },
            --     indent = {
            --         enable = true,
            --     },
            -- })
        end,
    },

    -- Mini pairs
    {
        "nvim-mini/mini.pairs",
        config = function()
            require("mini.pairs").setup()
        end,
    },

    ------------ Themes ------------------
    {"catppuccin/nvim"},
    {"EdenEast/nightfox.nvim"},
    {"navarasu/onedark.nvim"},
    {"sainnhe/gruvbox-material"},
    {"rebelot/kanagawa.nvim"},
    {"folke/tokyonight.nvim"},
    { "scottmckendry/cyberdream.nvim" },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
    },

}
