local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{
	  "olimorris/onedarkpro.nvim",
	  priority = 1000, -- Ensure it loads first
	},
	'nvim-tree/nvim-web-devicons',
	'folke/neodev.nvim',
	"nvim-lua/plenary.nvim",
	'nvim-treesitter/nvim-treesitter-context',
	'nvim-treesitter/playground',
	'mbbill/undotree',
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	{
		'kylechui/nvim-surround',
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
		require("nvim-surround").setup({})
		end
	},
	{ 'nvim-treesitter/nvim-treesitter'},
	{
		'windwp/nvim-autopairs',
		config = function() require("nvim-autopairs").setup ({}) end
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'}, -- Required
			{'saadparwaiz1/cmp_luasnip'},
		}
	},
})
