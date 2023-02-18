-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
			-- Packer can manage itself
			use("wbthomason/packer.nvim")
			use("nvim-lua/plenary.nvim")
			use("theprimeagen/harpoon")

			-- Synthax highlighting
			use("sheerun/vim-polyglot")
			use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

			-- Icons
			use("nvim-tree/nvim-web-devicons")

			use({
					"nvim-telescope/telescope.nvim",
					tag = "0.1.0",
					-- or                            , branch = '0.1.x',
					requires = { { "nvim-lua/plenary.nvim" } },
			})

			use("styled-components/vim-styled-components")

			use({
					"olivercederborg/poimandres.nvim",
					config = function()
						require("poimandres").setup({
								-- leave this setup function empty for default config
								-- or refer to the configuration section
								-- for configuration options
						})
					end,
			})

			use("nvim-treesitter/playground")
			use("mbbill/undotree")
			use("tpope/vim-fugitive")

			use {
			  'VonHeikemen/lsp-zero.nvim',
			  branch = 'v1.x',
			  requires = {
			    -- LSP Support
			    {'neovim/nvim-lspconfig'},             -- Required
			    {'williamboman/mason.nvim'},           -- Optional
			    {'williamboman/mason-lspconfig.nvim'}, -- Optional
			
			    -- Autocompletion
			    {'hrsh7th/nvim-cmp'},         -- Required
			    {'hrsh7th/cmp-nvim-lsp'},     -- Required
			    {'hrsh7th/cmp-buffer'},       -- Optional
			    {'hrsh7th/cmp-path'},         -- Optional
			    {'saadparwaiz1/cmp_luasnip'}, -- Optional
			    {'hrsh7th/cmp-nvim-lua'},     -- Optional
			
			    -- Snippets
			    {'L3MON4D3/LuaSnip'},             -- Required
			    {'rafamadriz/friendly-snippets'}, -- Optional
					{
						'glepnir/lspsaga.nvim',
						branch = "main",
						requires = {
								{ "nvim-tree/nvim-web-devicons" },
								{ "nvim-treesitter/nvim-treesitter" },
						},
					}
			  }
			}
			use("folke/zen-mode.nvim")
			use("christoomey/vim-tmux-navigator")
			use("xiyaowong/nvim-transparent")
			use("gpanders/editorconfig.nvim")


			use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)

			--mason
			use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
			use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

			use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
			-- autocompletion
			use("hrsh7th/nvim-cmp") -- completion plugin
			use("hrsh7th/cmp-buffer") -- source for text in buffer
			use("hrsh7th/cmp-path") -- source for file system paths
			use("L3MON4D3/LuaSnip") -- snippet engine
			use("saadparwaiz1/cmp_luasnip") -- for autocompletion
			use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
		end)
