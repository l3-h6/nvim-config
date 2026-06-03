return {
  {
    "roobert/surround-ui.nvim",
    dependencies = {
      "kylechui/nvim-surround",
      "folke/which-key.nvim",
    },
    config = function()
      require("surround-ui").setup({
        root_key = "S"
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
 config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then return end

    configs.setup({
      ensure_installed = {
        "javascript", "typescript", "tsx",
        "go", "lua", "python", "bash", "sql",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
  }
} 
