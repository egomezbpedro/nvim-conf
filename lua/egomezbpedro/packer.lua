-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use "nvim-treesitter/playground"
  use "theprimeagen/harpoon"
  use "theprimeagen/refactoring.nvim"
  use "mbbill/undotree"
  use "tpope/vim-fugitive"
  use "nvim-treesitter/nvim-treesitter-context"
  use "folke/zen-mode.nvim"
  use "eandrju/cellular-automaton.nvim"
  use "laytan/cloak.nvim"
  use "ThePrimeagen/vim-be-good"
  use "christoomey/vim-tmux-navigator"
  use 'github/copilot.vim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-orgmode/orgmode'
  use 'akinsho/org-bullets.nvim'

  use {
      'folke/trouble.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" }
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'navarasu/onedark.nvim',
	  as = 'onedark',
  })

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

end)

