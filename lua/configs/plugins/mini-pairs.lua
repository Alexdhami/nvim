-- lsp/configs/plugins/mini-pairs.lua

-- Usecase --> auto pairs when entering opening side.

return
{
    "nvim-mini/mini.pairs",
    config = function()
        require("mini.pairs").setup()
    end,
}
