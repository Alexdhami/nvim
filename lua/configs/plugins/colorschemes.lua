-- lua/plugins/colorscheme.lua
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
}
