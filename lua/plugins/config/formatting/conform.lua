return {
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("conform").setup({
        format_on_save = function(bufnr)
          local ignore_filetypes = { "sql" }
          return not vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype)
        end,
        formatters_by_ft = {
          lua = { "stylua" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          typescriptreact = { "prettier" },
          go = { "gofmt" },
          python = { "black" },
        },
      })
    end,
  },
}

