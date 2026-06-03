return  {
  "sudo-tee/opencode.nvim",
  config = function()
      require('opencode').setup({
        providers = {
          opencode = { enabled = true },
          bedrock = { enabled = false },
          anthropic = { enabled = false },
          aws = { enabled = false },
          claude = { enabled = false },
        },
        quick_chat = {
          default_model = "opencode-fast",  -- force a model under OpenCode
          default_agent = "plan",
        },
      })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { 'markdown', 'opencode_output' },
      },
      ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
    },
    -- Optional, for file mentions and commands completion, pick only one
    {
      "saghen/blink.cmp",
      build = function()
        require("blink.cmp").build():pwait()
      end,
      dependencies = {
        "saghen/blink.lib",
      },
      opts = {},
    },
    -- 'hrsh7th/nvim-cmp',

    -- Optional, for file mentions picker, pick only one
    'folke/snacks.nvim',
    -- 'nvim-telescope/telescope.nvim',
    -- 'ibhagwan/fzf-lua',
    -- 'nvim_mini/mini.nvim',
  },
}
