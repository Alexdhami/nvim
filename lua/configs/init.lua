-- lua/configs/init.lua

-- import modiules inside configs forder via require() function

require("configs.keymaps")
require("configs.options")

-- This ONE line loads lazy.nvim, which automatically reads every file in configs/plugins/
require("configs.lazy-loader")

require("configs.theme_config")
