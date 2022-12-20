-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local custom_theme = require "lualine.themes.nightfly"
custom_theme.normal.c.bg = "transparent"

lualine.setup {
  options = {
    theme = custom_theme,
  },
}
