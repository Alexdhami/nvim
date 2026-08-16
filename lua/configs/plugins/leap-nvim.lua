-- Leap-nvim
return {
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
}
