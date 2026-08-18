-- lua/configs/plugins/colorscheme.lua

-- neovim themes go here.

return {
    {
        "rose-pine/neovim",

        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
    {"catppuccin/nvim"},
    {"EdenEast/nightfox.nvim"},
    {"navarasu/onedark.nvim"},
    {"sainnhe/gruvbox-material"},
    {"rebelot/kanagawa.nvim"},
    {"folke/tokyonight.nvim"},
    { "scottmckendry/cyberdream.nvim" },
    { 
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup {
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            }
        end,

        -- optionally set the colorscheme within lazy config
        init = function()
            vim.cmd("colorscheme poimandres")
        end
    },
}
