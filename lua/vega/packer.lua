local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed")
    return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
    use("wbthomason/packer.nvim")
    use({
        "svrana/neosolarized.nvim",
        requires = { "tjdevries/colorbuddy.nvim" },
    })
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")              -- fuzzy finder
    use("nvim-telescope/telescope-file-browser.nvim") -- fuzzy finder file browser
    use("kyazdani42/nvim-web-devicons")               -- File icons
    use 'glepnir/lspsaga.nvim'                        -- LSP UIs
    use("L3MON4D3/LuaSnip")                           -- Snippet
    use("hoob3rt/lualine.nvim")
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind-nvim") -- vscode-like picograms
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for newvim's buil-in LSP
    use("hrsh7th/nvim-cmp")     -- Completion
    use("preservim/tagbar")     -- tagbar for vim
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use("ThePrimeagen/harpoon")              -- file navigation
    use("williamboman/mason.nvim")           -- lsp installation tools
    use("williamboman/mason-lspconfig.nvim") -- lsp config helper

    use("jose-elias-alvarez/null-ls.nvim")
end)
