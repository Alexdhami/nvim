-- Add lazy.nvim to runtimepath manually
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)


require("Alex")
