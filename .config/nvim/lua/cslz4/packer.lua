local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then return end

autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
} -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use('svrana/neosolarized.nvim')
  use('tjdevries/colorbuddy.vim')

  use { 'xiyaowong/transparent.nvim' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use('nvim-lua/plenary.nvim')

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'nvim-tree/nvim-web-devicons'
  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
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

  use 'windwp/nvim-autopairs'

  use 'windwp/nvim-ts-autotag'
end)
