-- lua/configs/plugins/alpha-nvim

-- Usecase --> nvim dashboard decoration.

return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')

        -- Logo to show on the dashboard.

        dashboard.section.header.val = {
            "╔═══════════════════════════════════════════╗",
            "║                                           ║",
            "║         ███   ████    ███   █   █         ║",
            "║        █ ░░█  █░░░█  █░░░░  █░  █░░       ║",
            "║        █████░ ████░░ █░░    █████░░       ║",
            "║        █░░░█░ █░░█░  █░░    █░░░█░░       ║",
            "║        █░░░█░ █░░█░   ███░  █░░░█░░       ║",
            "║         ░░  ░ ░░░ ░    ░░░   ░░  ░░       ║",
            "║                                           ║",
            "║                                           ║",
            "║       ░▒▓ [ W E L C O M E    ] ▓▒░       ║",
            "║               ~~ alex ~~                  ║",
            "║                                           ║",
            "╚═══════════════════════════════════════════╝",
        }
        -- available colors (Type, Function, Special, Keyword, String, Comment, Constant, Number, Structure, Statement, Include, etc)
        dashboard.section.header.opts.hl = "Comment"

        alpha.setup(dashboard.opts)
    end
}
