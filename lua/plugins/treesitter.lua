
-- plugins/treesitter.lua

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "python", "lua", "json", "bash"
  }, -- or "all"
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}
