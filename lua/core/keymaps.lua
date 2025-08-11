-- Custom key mappings

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Insert mode: Exit insert with 'jj' or 'kk'
map("i", "jj", "<Esc>", opts)
map("i", "kk", "<Esc>", opts)
map("n", "jk", ":noh<CR>")
-- Delete previous word with Ctrl+Backspace
map("i", "<C-BS>", "<C-W>", opts)
map("n", "<space><space>", "zo", opts)
map("n", "<space><CR>", "za", opts)
-- Search and replace with Ctrl+F
map("i", "<C-F>", "<Esc>:%s///g<Left><Left><Left>", opts)

-- Save and run Python file with Ctrl+Enter
map("n", "<C-CR>", ":w<CR>:!python3 %<CR>", opts)

-- Completion menu navigation
map("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true, silent = true })
map("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true, silent = true })

-- Toggle file explorer with Ctrl+n
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Window navigation with Alt + hjkl
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-l>", "<C-w>l", opts)
map("n", "<A-j>", "<C-w>j", opts)
map("n", "<A-k>", "<C-w>k", opts)
