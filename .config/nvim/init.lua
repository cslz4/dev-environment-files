require('carlossluzala.base')
require('carlossluzala.highlights')
require('carlossluzala.maps')
require('carlossluzala.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('carlossluzala.macos')
end
if is_win then
  require('carlossluzala.windows')
end
if is_wsl then
  require('carlossluzala.wsl')
end
