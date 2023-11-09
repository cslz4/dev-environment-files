local status, undotree = pcall(require, 'undotree')

vim.keymap.set('n', '<leader>u', undotree.toggle, { noremap = true, silent = true })
