vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = {
	  	{'nvim-lua/plenary.nvim'},
		{'debugloop/telescope-undo.nvim'}
		},
		config = function ()
			require("telescope").load_extension("undo")
			vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
		end,
  }
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  -- lua with packer.nvim
  use {
	  "max397574/better-escape.nvim",
	  config = function()
		  require("better_escape").setup()
	  end,
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  use {
	'konapun/vacuumline.nvim', requires = {
  	'glepnir/galaxyline.nvim', branch = 'main',
  	'kyazdani42/nvim-web-devicons', opt = true
	},
	config = function() require('vacuumline').setup() end} -- Add this line to use defaults; otherwise, call `setup` with your config as described below wherever you configure your plugins
  use { 'nvim-lua/plenary.nvim' }
  use {'ThePrimeagen/harpoon' }
end)
