-------- Setting comment Uncomment --------

--set leader to space
vim.g.mapleader = " "

-- nvim file System on space n
vim.keymap.set("n","<leader>n",vim.cmd.Ex)

-- Map leader+h/l to move between windows
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>j', '<C-w>j')

-- move selected text line up down in line
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")

vim.keymap.set("n","J","mzJ`z")


-- For single-window search (local jump)
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)', { desc = 'Leap Search (Window)' })

-- For multi-window search (global jump)
vim.keymap.set('n', 'S', '<Plug>(leap-from-window)', { desc = 'Leap Multi-Window Jump' })

-- Visual mode: ,c
vim.keymap.set('v', ',c', ':Commentary<CR>', { noremap = true, silent = true })



-- Normal mode: ,cc
vim.keymap.set('n', ',c', ':Commentary<CR>', { noremap = true, silent = true })



-------- Save and run Python file with Ctrl+Enter ------
vim.keymap.set('n', '<C-CR>', function()
  local filetype = vim.bo.filetype
  vim.cmd('w') -- save file before running
  if filetype == 'python' then
    vim.cmd('!echo "" && python3 %')
  elseif filetype == 'javascript' then
    vim.cmd('!echo "" && node %')
  elseif filetype == 'c' then
    vim.cmd('!gcc % -o %:r && echo "" && ./%:r')
  elseif filetype == 'cpp' then
    vim.cmd('!g++ % -o %:r && echo "" && ./%:r')
  elseif filetype == 'java' then
    vim.cmd('!javac % && java %:r')
  elseif filetype == 'ruby' then
    vim.cmd('!ruby %')
  elseif filetype == 'go' then
    vim.cmd('!go run %')
  else
    print('No run command defined for filetype: ' .. filetype)
  end
end)


--------  Search and replace with Ctrl+F --------
vim.keymap.set('n', 'ff', '<Esc>:%s///g<Left><Left><Left>')



-------- set jj,jk,kj and kk to esc the insert mode --------
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'kk', '<Esc>')
vim.keymap.set('i','jk','<Esc>')
vim.keymap.set('i','kj','<Esc>')


---------- Delete previous word with Ctrl+Backspace ---------
vim.keymap.set('i', '<C-BS>', '<C-W>')



-- Space + Enter = toggle fold under cursor
vim.keymap.set('n', '<Space><CR>', 'za', { noremap = true, silent = true })


