-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	})

	-- Telescope is a fuzzy finder, so you can search for fies and stuff.
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Set color scheme
	use({
		"navarasu/onedark.nvim",
		as = "onedark",
		config = function()
			vim.cmd("colorscheme onedark")
		end
	})

	-- Treesitter: Parses code, highlighting, (indenting?)
	use ({
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	})
	use('nvim-treesitter/playground')

	-- Harpoon: Faster file navigation 
	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	-- UndoTree: See your undo history for a file.
	use('mbbill/undotree')

	-- Vim fugitive: Git plugin
	use('tpope/vim-fugitive')

	-- LSP
	use("neovim/nvim-lspconfig")

	-- lazydev.nvim
	use {
		'folke/lazydev.nvim',
		ft = 'lua', -- only load on Lua files
		config = function()
			require('lazydev').setup {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			}
		end,
	}

    -- Auto import:
    use("stevanmilic/nvim-lspimport")

end)
