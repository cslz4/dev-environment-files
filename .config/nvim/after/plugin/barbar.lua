vim.g.barbar_auto_setup = false -- disable auto-setup
require'barbar'.setup {}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<leader>bw', '<Cmd>bufdo bw<CR>', opts)
