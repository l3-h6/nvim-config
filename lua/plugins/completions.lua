return {
  { 'neovim/nvim-lspconfig' },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { 'hrsh7th/cmp-vsnip' },
  { 'hrsh7th/vim-vsnip' },
  { "SergioRibera/cmp-dotenv" },
  { "roobert/tailwindcss-colorizer-cmp.nvim" },
  {
    "xzbdmw/colorful-menu.nvim",
    config = function()
      require("colorful-menu").setup({
        ls = {
          lua_ls = {
            arguments_hl = "@comment",
          },
          gopls = {
            align_type_to_right = true,
            add_colon_before_type = false,
          },
          ts_ls = {
            extra_info_hl = "@comment",
          },
          vtsls = {
            extra_info_hl = "@comment",
          },
          ["rust-analyzer"] = {
            extra_info_hl = "@comment",
          },
          clangd = {
            extra_info_hl = "@comment",
          },
          roslyn = {
            extra_info_hl = "@comment",
          },
          basedpyright = {
            extra_info_hl = "@comment",
          },
          fallback = true,
        },
        fallback_highlight = "@variable",
        max_width = 60,
      })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "lukas-reineke/cmp-under-comparator"
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered()
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" },
          { name = "dotenv" },
        }, {
          { name = "buffer" },
        }),
        formatting = {
          format = function(entry, vim_item)
            local highlights_info = require("colorful-menu").cmp_highlights(entry)
            if highlights_info ~= nil then
              vim_item.abbr_hl_group = highlights_info.highlights
              vim_item.abbr = highlights_info.text
            end
            return vim_item
          end,
        },
        sorting = {
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            require("cmp-under-comparator").under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
      })
    end,
  }
}
