return require('packer').startup(function(use) -- Packer can manage itself use 'wbthomason/packer.nvim'
  

	use 'wbthomason/packer.nvim'

	use { "ellisonleao/gruvbox.nvim" }

	use {"folke/tokyonight.nvim"}
  
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }

  	}
  	use({
    		"aserowy/tmux.nvim",
    		config = function()
        	require("tmux").setup({
            	-- overwrite default configuration
            	-- here, e.g. to enable default bindings
            	copy_sync = {
                -- enables copy sync and overwrites all register actions to
                	-- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
                	enable = true,
            	},
            	navigation = {
                	-- enables default keybindings (C-hjkl) for normal mode
                	enable_default_keybindings = true,
            	},
            		resize = {
                	-- enables default keybindings (A-hjkl) for normal mode
                		enable_default_keybindings = true,
            		}		
        	})
    	end
	})

	--Nvim tree
	use {
  	'kyazdani42/nvim-tree.lua',
  	requires = {
    	'kyazdani42/nvim-web-devicons', -- optional, for file icons
  	},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
 	} 

 	use {
        	'nvim-treesitter/nvim-treesitter',
    	}


        use {
     	'nvim-telescope/telescope.nvim', tag = '0.1.0',
     		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	use 'windwp/nvim-ts-autotag'

 	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end
	}

	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  --Snipets
	use 'L3MON4D3/LuaSnip'
	use "rafamadriz/friendly-snippets"
	use 'saadparwaiz1/cmp_luasnip'

  --cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use {
    		"williamboman/mason.nvim",
    		"williamboman/mason-lspconfig.nvim",
	}

	use 'jose-elias-alvarez/null-ls.nvim'

	use {
  		'lewis6991/gitsigns.nvim',
  		-- tag = 'release' -- To use the latest release
	}
	--snippy
	use 'dcampos/nvim-snippy'
        use 'dcampos/cmp-snippy'
	--splash screen
	use {
    		'goolord/alpha-nvim',
    		requires = { 'kyazdani42/nvim-web-devicons' },
    		config = function ()
        	require'alpha'.setup(require'alpha.themes.dashboard'.config)
    	end
	}
	-- to improve performance
	use 'lewis6991/impatient.nvim'

	-- to add batter terminal
	use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
  		require("toggleterm").setup()
	end}

	use {"moll/vim-bbye"}

end)	







