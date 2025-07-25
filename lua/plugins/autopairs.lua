-- plugins/autopairs.lua

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" }, -- ensure cmp is available
  config = function()
    local npairs = require("nvim-autopairs")

    npairs.setup({
      check_ts = true,
      fast_wrap = {
        map = "<M-e>",
        chars = { "(", "[", "{", '"', "'", "`" },
        pattern = string.gsub("[%'%'%[%]%(%)%{%}]", "%s", ""),
        offset = 0,
      },
    })

    -- 👇 Integrate with nvim-cmp
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}
