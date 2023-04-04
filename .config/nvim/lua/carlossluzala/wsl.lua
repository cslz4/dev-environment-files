vim.cmd [[
  augroup WSLYank
  autocmd!
  autocmd TextYankPost * :call system('clip.exe ',@")
  augroup END
]]
