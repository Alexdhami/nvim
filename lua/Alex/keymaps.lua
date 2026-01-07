-------- Setting comment Uncomment --------

-- Error diagnostic mapping
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float()
end, { desc = "Show diagnostic" })

vim.keymap.set("n", "<leader>je", function()
  vim.diagnostic.goto_next()
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "<leader>ke", function()
  vim.diagnostic.goto_prev()
end, { desc = "Prev diagnostic" })
--set leader to space
vim.g.mapleader = " "

-- set {} don't open folds

vim.keymap.set("n","{","{",{noremap = true, silent = true})
vim.keymap.set("n","}","}",{noremap = true, silent = true})

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


--------  Search and replace with Ctrl+F --------
vim.keymap.set('n', 'ff', '<Esc>:%s///g<Left><Left><Left>')


-------- set jj,jk,kj and kk to esc the insert mode --------
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jl', '<Esc>')
vim.keymap.set('i', 'kk', '<Esc>')
vim.keymap.set('i', 'kl', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'kh', '<Esc>')
vim.keymap.set('i', 'jh', '<Esc>')


---------- Delete previous word with Ctrl+Backspace ---------
vim.keymap.set('i', '<C-BS>', '<C-W>')



-- Space + Enter = toggle fold under cursor
vim.keymap.set('n', '<Space><CR>', 'za', { noremap = true, silent = true })


-------- Save and run programming files with Ctrl+Enter ------
vim.keymap.set('n', '<C-CR>', function()
  local filetype = vim.bo.filetype
  vim.cmd('w') -- save file before running
  if filetype == 'python' then
    vim.cmd('!echo "" && python3 %')
  elseif filetype == 'javascript' then
    vim.cmd('!echo "" && node %')
  elseif filetype == 'c' then
      vim.cmd('!echo "" && echo "" && gcc % && ./a.out')
  elseif filetype == 'cpp' then
      vim.cmd('!echo "" && echo "" && g++ -std=c++20 % && ./a.out')
  elseif filetype == 'asm' or filetype == 's' then
      vim.cmd('!echo "" && nasm -f elf64 % -o %:r.o && ld %:r.o -o %:r && ./%:r')
  elseif filetype == 'java' then
      vim.cmd('!echo "" && javac % && java %:r')
  elseif filetype == 'ruby' then
    vim.cmd('!echo "" && ruby %')
  elseif filetype == 'go' then
    vim.cmd('!echo "" && go run %')
  else
    print('No run command defined for filetype: ' .. filetype)
  end
end)
