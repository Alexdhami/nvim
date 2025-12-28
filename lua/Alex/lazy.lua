return {
    -- Comment.nvim plugin for commenting 
    {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end
    }
,
    -- Leap
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").setup({
                labels = "sdjfkl",
            })
            -- Custom keymap
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

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
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


    -- Mini pairs
    {
        "nvim-mini/mini.pairs",
        config = function()
            require("mini.pairs").setup()
        end,
    },

    -- Themes 
    { "scottmckendry/cyberdream.nvim" },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
    },

}
