-- Tabspacing stuffs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

-- Numbers
vim.cmd("set relativenumber")
vim.wo.number = true

-- Maping the leader to <space> key
vim.g.mapleader = " "

-- Copy and Paste for external Clipboard
vim.opt.clipboard:append('unnamedplus')

-- Vim Swapfile to false
vim.opt.swapfile = false

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Color 24-bit support
vim.opt.termguicolors = true 