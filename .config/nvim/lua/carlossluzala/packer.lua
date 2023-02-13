-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Synthax highlighting
        use('sheerun/vim-polyglot')
        use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

        -- Icons
        use('ryanoasis/vim-devicons')

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use('styled-components/vim-styled-components')

        use {
            'olivercederborg/poimandres.nvim',
            config = function()
                require('poimandres').setup {
                    -- leave this setup function empty for default config
                    -- or refer to the configuration section
                    -- for configuration options
                }
            end
        }

        use('nvim-treesitter/playground')
        use('theprimeagen/harpoon')
        use('mbbill/undotree')
        use('tpope/vim-fugitive')

        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            }
        }

        use("folke/zen-mode.nvim")
        use("github/copilot.vim")
        use("christoomey/vim-tmux-navigator")
        use("xiyaowong/nvim-transparent")
        use("gpanders/editorconfig.nvim")
    end)
