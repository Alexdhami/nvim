-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	-- Telescope fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} } -- dependency
	}

	-- rose pine theme
	use {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	}
	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
	use("theprimeagen/harpoon")
	use("mbbill/undotree")

    -- lsp configuration
	use{
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'saadparwaiz1/cmp_luasnip'},

            --Snippet
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},

        }
    }

    -- for motions like s{char1}{char2}
    use {
        'ggandor/leap.nvim',
        config = function()
            require('leap').setup({
                labels = 'sdjfkl' -- Must be a string of labels
            })
        end
    }

    -- for pairs  ("''")
    use {
        'nvim-mini/mini.pairs',
        config = function()
            -- This is the core line to enable the plugin with default settings
            require('mini.pairs').setup()
        end,
    }

  end)
