return {
  {
    "zaldih/themery.nvim",
    dependencies = {
      "folke/tokyonight.nvim",
      "rebelot/kanagawa.nvim",
      {
        "rose-pine/neovim",
        name = "rose-pine"
      },
      {
        "catppuccin/nvim",
        name = "catppuccin"
      },
      "shaunsingh/nord.nvim",
      "EdenEast/nightfox.nvim",
      "projekt0n/github-nvim-theme",
      "sainnhe/edge",
      "sainnhe/gruvbox-material",
      "sainnhe/everforest",
      "ayu-theme/ayu-vim"
    },
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          -- DARK THEMES
          { name = "Tokyonight - Night", colorscheme = "tokyonight-night" },
          { name = "Tokyonight - Moon", colorscheme = "tokyonight-moon" },
          { name = "Tokyonight - Storm", colorscheme = "tokyonight-storm" },
          { name = "Kanagawa - Dragon", colorscheme = "kanagawa-dragon" },
          { name = "Kanagawa - Wave", colorscheme = "kanagawa-wave" },
          { name = "Rosepine", colorscheme = "rose-pine-main" },
          { name = "Rosepine Moon", colorscheme = "rose-pine-moon" },
          { name = "Catppuccin - Mocha", colorscheme = "catppuccin-mocha" },
          { name = "Nord", colorscheme = "nord" },
          { name = "Nightfox", colorscheme = "nightfox" },
          { name = "Github - Dark", colorscheme = "github_dark" },
          { name = "Edge - Dark", colorscheme = "edge" },
          { name = "Gruvbox Material - Dark", colorscheme = "gruvbox-material" },
          { name = "Everforest - Dark", colorscheme = "everforest" },
          { name = "Ayu - Dark", colorscheme = "ayu" },

          -- LIGHT THEMES
          { name = "Tokyonight - Day", colorscheme = "tokyonight-day" },
          { name = "Kanagawa - Lotus", colorscheme = "kanagawa-lotus" },
          { name = "Rosepine - Dawn", colorscheme = "rose-pine-dawn" },
          { name = "Catppuccin - Latte", colorscheme = "catppuccin-latte" },
          { name = "Dayfox", colorscheme = "dayfox" },
          { name = "Github - Light", colorscheme = "github_light" },
          { name = "Edge - Light", colorscheme = "edge" },
          { name = "Gruvbox Material - Light", colorscheme = "gruvbox-material" },
          { name = "Everforest - Light", colorscheme = "everforest" },
          { name = "Ayu - Light", colorscheme = "ayu-light" },
        },
      })

      vim.keymap.set('n', '<c-t>', ':Themery<CR>', { desc = "Open Theme Switcher" })
    end
  }
}
