-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("folke/tokyonight.nvim")
	use("bluz71/vim-nightfly-guicolors")
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons")
    use("Joakker/lua-json5")

	-- fuzzy finder
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use("ThePrimeagen/harpoon")

	-- code helper manager
	use("williamboman/mason.nvim")
	use("jayp0521/mason-nvim-dap.nvim")

	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("leoluz/nvim-dap-go")
	use("mfussenegger/nvim-dap-python")

	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("onsails/lspkind.nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main" })

	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- formatter
	use("mhartington/formatter.nvim")
    use("godlygeek/tabular")

    -- Comments
    use "numToStr/Comment.nvim"
    use 'JoosepAlviste/nvim-ts-context-commentstring'

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({
		"nvim-lualine/lualine.nvim",
	})

	use("mortepau/codicons.nvim")

    use("preservim/tagbar")
    use "lewis6991/gitsigns.nvim"

end)
