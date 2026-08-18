--  lua/configs/lazy-loader.lua

--  Define where lazy.nvim should be saved on your filesystem

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

--  Auto-install lazy.nvim if it doesn't exist
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ 
        "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath 
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

--  Add lazy.nvim to Neovim's runtime path so Lua can require it
vim.opt.rtp:prepend(lazypath)

--  Initialize lazy.nvim and load all specs from your plugins directory
require("lazy").setup("configs.plugins")
