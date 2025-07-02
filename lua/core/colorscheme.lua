-- Set colorscheme

-- Set colorscheme safely after plugins are loaded

vim.defer_fn(function()
  local ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
  if not ok then
    vim.cmd("colorscheme default")
  end
end, 0)
