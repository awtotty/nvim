local langs = {
  "python", "c", "lua", "vim", "vimdoc", "query", "bash",
  "markdown", "markdown_inline",
}

require("nvim-treesitter").install(langs)

vim.api.nvim_create_autocmd("FileType", {
  pattern = langs,
  callback = function() vim.treesitter.start() end,
})
