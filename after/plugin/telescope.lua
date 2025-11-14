local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {}) -- files search
vim.keymap.set('n', '<leader>f', builtin.live_grep, {}) -- files search

