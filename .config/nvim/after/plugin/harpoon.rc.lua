local status, mark = pcall(require, 'harpoon.mark')
if (not status) then return end
local status2, ui = pcall(require, 'harpoon.ui')
if (not status2) then return end

vim.keymap.set('n', '<Leader>a', mark.add_file)
vim.keymap.set('n', '<Leader>e', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end)
