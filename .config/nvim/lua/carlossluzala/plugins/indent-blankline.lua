local setup, blankline = pcall(require, "indent_blankline")

vim.opt.termguicolors = true

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#26233a gui=nocombine]]

if not setup then
  return
end

blankline.setup {
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
  },
}
