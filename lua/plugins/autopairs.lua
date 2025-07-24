--- autopairs.lua

-- Ensure the plugin is installed using lazy.nvim
return {
  "windwp/nvim-autopairs",  -- Plugin name
  config = function()
    -- Set up basic autopair functionality
    require("nvim-autopairs").setup({
      check_ts = true,   -- Enable treesitter support for better context
      fast_wrap = {
        map = "<M-e>",   -- Alt+e for fast wrapping
        chars = {"(", "[", "{", '"', "'", "`"},  -- The wrap characters
        pattern = string.gsub("[%'%'%[%]%(%)%{%}]", "%s", ""),
        offset = 0,  -- Offset from the cursor for the wrap
      },
    })
  end,
}

