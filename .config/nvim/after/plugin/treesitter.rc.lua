local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disabled = {},
    },
    indent = {
        enable = true,
        disable = {}
    },
    ensure_installed = {
        'typescript',
        'tsx',
        'lua',
        'json',
        'css',
        'vim',
        'markdown',
        'markdown_inline'
    },
    autotag = {
        enable = true,
    }
}
