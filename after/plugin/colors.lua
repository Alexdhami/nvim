function ThemeIt(color)
    color = color or "cyberdream"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})

end

ThemeIt("rose-pine")

 -----------------    Available Themes    ----------------------

 -- 1 -> cyberdream
 -- 2 -> rose-pine
 -- 3 -> tokyonight
 -- 4 -> catppuccin
 -- 5 -> nightfox
 -- 6 -> onedark
 -- 7 -> gruvbox-material
 -- 8 -> kanagawa
