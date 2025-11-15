local lsp = require("lsp-zero")

-- Mason
require("mason").setup()

-- Mason-LSP
require("mason-lspconfig").setup({
    ensure_installed = { "pyright","clangd", "lua_ls" },
})

-- When LSP attaches
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
end)

-- Setup each server automatically
local lspconfig = require("lspconfig")
require("mason-lspconfig").setup({
    handlers = {
        function(server)
            lspconfig[server].setup({})
        end,
    }
})

-- CMP setup
local cmp = require("cmp")
cmp.setup({
    mapping = {
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

lsp.setup()
