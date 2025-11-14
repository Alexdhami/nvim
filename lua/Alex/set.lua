-- This makes Neovim recognize indentation blocks as foldable regions — functions, ifs, loops, etc.
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.foldenable = true


-------- Make line numbers default -------
vim.o.number = true
vim.o.relativenumber = true

-------- Set indentation to 4 spaces --------
vim.opt.tabstop = 4 -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4 -- Number of spaces for each indentation level
vim.opt.softtabstop = 4 -- Number of spaces a <Tab> counts for while editing
vim.opt.expandtab = true -- Convert tabs to spaces


