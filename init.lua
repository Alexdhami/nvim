
-- Entry point of Neovim configuration

require("utils.bootstrap")      -- Ensure lazy.nvim is installed
require("core.options")         -- Basic Neovim settings
require("core.keymaps")         -- Keybindings
require("core.colorscheme")     -- Theme setup
require("core.lazy")            -- Plugin definitions & lazy loading

