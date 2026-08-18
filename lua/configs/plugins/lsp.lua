-- lua/configs/plugins/lsp.lua

-- Usecase --> LSP support for code intelligence and diagnostics. (pyright, clangd, etc.. come from here)

return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            -- LSP Core & Management
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Autocomplete Engine & Sources
            {"hrsh7th/nvim-cmp"},
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "saadparwaiz1/cmp_luasnip",

            -- Snippet Engine & Pre-made Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            local lsp = require("lsp-zero")

            -- Mason
            require("mason").setup()

            -- When LSP attaches
            lsp.on_attach(function(client, bufnr)
                local opts = { buffer = bufnr }

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

                -- Explicitly force rounded border on hover
                vim.keymap.set("n", "K",function ()  
                    vim.lsp.buf.hover({border = "rounded"})
                end, opts)
            end)

            -- Mason-LSP Setup (ensure_installed + handlers together)
            local lspconfig = require("lspconfig")
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright", "clangd", "lua_ls" },
                handlers = {
                    function(server)
                        lspconfig[server].setup({})
                    end,
                },
            })

            -- CMP setup
            local cmp = require("cmp")
            cmp.setup({
                -- Enable borders here.
                window = {
                    completion = cmp.config.window.bordered({
                        border = "rounded",
                        winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None",
                    }),
                    documentation = cmp.config.window.bordered({
                        border = "rounded",
                    }),
                },                mapping = {
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif require("luasnip").expand_or_jumpable() then
                            require("luasnip").expand_or_jump()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif require("luasnip").jumpable(-1) then
                            require("luasnip").jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "luasnip" },
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
            })
        end,
    },
}
