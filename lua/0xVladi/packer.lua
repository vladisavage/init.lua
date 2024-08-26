-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'tomasiser/vim-code-dark' })
  use({ "rose-pine/neovim", name = "rose-pine" })
  use({ "folke/tokyonight.nvim", name = "tokyonight" })

  use { 'nvim-treesitter/nvim-treesitter' }

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
	  }
  }

  use({ 'theprimeagen/harpoon' })
  use({ 'mbbill/undotree' })

  use({ 'prettier/vim-prettier', { run = 'npm install' }, name = 'vim-prettier' })
  use({ 'github/copilot.vim' })
  use({ 'rhysd/git-messenger.vim' })

  use 'sindrets/diffview.nvim'
  use 'nvim-tree/nvim-web-devicons'

end)

