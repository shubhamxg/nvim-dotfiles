vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })

-- require('arc.base')
require('arc.highlights')
require('arc.plugins')
require('arc.editor')
require('arc.keymaps')
vim.cmd('source ~/.config/nvim/gui.vim')
