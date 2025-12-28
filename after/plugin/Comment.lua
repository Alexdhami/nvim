local api = require("Comment.api")

-- SINGLE LINE COMMENT (linewise)
vim.keymap.set("n", ",co", api.toggle.linewise.current, {
  desc = "Toggle line comment"
})

vim.keymap.set("v", ",co", function()
  local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.linewise(vim.fn.visualmode())
end, {
  desc = "Toggle line comment (selection)"
})

-- MULTILINE / BLOCK COMMENT
vim.keymap.set("n", ",cm", api.toggle.blockwise.current, {
  desc = "Toggle block comment"
})

vim.keymap.set("v", ",cm", function()
  local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.blockwise(vim.fn.visualmode())
end, {
  desc = "Toggle block comment (selection)"
})
