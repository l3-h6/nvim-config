return 
{
  "stevearc/conform.nvim",
  event = "BufWritePre",
  config = function()
    require("conform").setup({
      format_on_save = function(bufnr)
        return false
      end,
      formatters_by_ft = {},
    })
  end,
}
