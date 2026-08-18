function ChangeTheme(color)
    color = color or "cyberdream"
    vim.cmd.colorscheme(color)

    -- Modern, clean colors for the completion popup
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e", fg = "#cdd6f4" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#fff3ff", fg = "#130a3a", bold = true })
    vim.api.nvim_set_hl(0, "FloatBorder", {fg = "#036666" })

    -- Hover window content (text & background)
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" })

    -- Hover window border frame
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#89b4fa" })
end

ChangeTheme("cyberdream")

-----------------    Available Themes    ----------------------

-- 1 -> cyberdream
-- 2 -> rose-pine
-- 3 -> tokyonight
-- 4 -> catppuccin
-- 5 -> nightfox
-- 6 -> onedark
-- 7 -> gruvbox-material
-- 8 -> kanagawa
-- 9 -> poimandres 
