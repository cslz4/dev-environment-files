-- https://github.com/neovim/neovim/issues/12113#issuecomment-612827446
-- https://mitchellt.com/2022/05/15/WSL-Neovim-Lua-and-the-Windows-Clipboard.html

vim.o.clipboard = "unnamedplus"
vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
        ["+"] =  "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
}

vim.keymap.set({"n", "v"}, "<C-c>", '"+y', { noremap = true })
vim.keymap.set({"n", "v"}, "<C-v>", '"+p', { noremap = true })
vim.keymap.set('i', '<c-v>', '<esc>"+pa', { noremap = true })
