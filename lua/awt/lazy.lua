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
    'nvim-telescope/telescope.nvim',
    branch = 'master',
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
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
  },

  -- Harpoon: because file tree browsers suck
  {
    "ThePrimeagen/harpoon"
  },

  -- NERDTree: because file tree browsers sometimes don't suck
  {
    "preservim/nerdtree"
  },

  -- dired: steal the best of emacs
  {
    "X3eRo0/dired.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
  },

  -- Undotree: better undo
  {
    "mbbill/undotree"
  },

  -- Vim-Commentary: comments in most languages
  {
    "tpope/vim-commentary"
  },

  -- Git stuff
  {
    "airblade/vim-gitgutter",
  },

  -- Language Support
  {
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
  },

  -- Edit on remotes
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup()
    end
  },

  -- Formatting
  {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    dir = '/home/awt/programs/orc.nvim',
    opts = {},
  }
})
