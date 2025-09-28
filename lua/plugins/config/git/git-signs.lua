return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end
        map('n', ']c', function()
          if vim.wo.diff then return ']c' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, {expr=true, desc = 'Next Hunk'})
        map('n', '[c', function()
          if vim.wo.diff then return '[c' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, {expr=true, desc = 'Prev Hunk'})
        map({'n', 'v'}, '<leader>ggs', ':Gitsigns stage_hunk<CR>', {desc = 'Stage Hunk'})
        map({'n', 'v'}, '<leader>ggr', ':Gitsigns reset_hunk<CR>', {desc = 'Reset Hunk'})
        map('n', '<leader>ggS', gs.stage_buffer, {desc = 'Stage Buffer'})
        map('n', '<leader>ggu', gs.undo_stage_hunk, {desc = 'Undo Stage Hunk'})
        map('n', '<leader>ggR', gs.reset_buffer, {desc = 'Reset Buffer'})
        map('n', '<leader>ggp', gs.preview_hunk, {desc = 'Preview Hunk'})
        map('n', '<leader>ggb', function() gs.blame_line{full=true} end, {desc = 'Blame Line'})
        map('n', '<leader>ggd', gs.diffthis, {desc = 'Diff This'})
        map('n', '<leader>ggD', function() gs.diffthis('~') end, {desc = 'Diff This ~'})
        map('n', '<leader>ggt', gs.toggle_deleted, {desc = 'Toggle Deleted'})
      end
    }
  end
} 
