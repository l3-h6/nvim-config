return { 
  'augmentcode/augment.vim',
  config = function()
    vim.g.augment_workspace_path = vim.fn.getcwd()
    vim.g.augment_workspace_folders = {
      vim.fn.getcwd(),
    }

    vim.keymap.set('n', '<leader>ac', '<cmd>Augment chat<CR>', { desc = "Augment Chat" })
    vim.keymap.set('n', '<leader>an', '<cmd>Augment chat-new<CR>', { desc = "Augment New" })
    vim.keymap.set('n', '<leader>at', '<cmd>Augment chat-toggle<CR>', { desc = "Augment Toggle" })
  end
}
