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

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    -- Telescope: file browsing and searching 
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- rose-pine: make it look sexy
    { 
        "rose-pine/neovim", 
        name = "rose-pine",
    },

    -- Treesitter: file tree analysis
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate"
    },

    -- Harpoon: because file trees suck
    { 
        "ThePrimeagen/harpoon"
    },

    -- Undotree: better undo
    {
        "mbbill/undotree"
    },

    -- Vim-Commentary: comments in most languages
    {
        "tpope/vim-commentary"
    },

    -- LSP
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },  

    -- Copilot: everybody needs a buddy
    { 
        "github/copilot.vim",
    },
})


