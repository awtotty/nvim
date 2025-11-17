require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- everything else
    ["_"] = { "prettier" },
  },
  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
})

-- manual trigger
vim.keymap.set("n", "<leader>f", function()
  require("conform").format({
    lsp_fallback = true,
    timeout_ms = 500,
  })
end)
