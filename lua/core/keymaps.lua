-- Navigating Panes
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { desc = "Navigate Pane - Up" })
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { desc = "Navigate Pane - Down" })
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { desc = "Navigate Pane - Left" })
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { desc = "Navigate Pane - Right" })

-- Navigating Buffers
vim.keymap.set('n', '<leader>[', ':bnext<CR>', { desc = "Navigate Buffer - Next Buffer" },
  { noremap = true, silent = true })
vim.keymap.set('n', '<leader>]', ':bprevious<CR>', { desc = "Navigate Buffer - Previous Buffer" },
  { noremap = true, silent = true })

-- Close buffer
vim.keymap.set('n', '<leader>bd', ':bufdo bd<CR>', { desc = "Close all buffers" })

-- Split Panes
vim.keymap.set('n', '<leader>bs', ':vsplit<CR>', { desc = "Split Pane" }, { noremap = true, silent = false })

-- Exit Insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

