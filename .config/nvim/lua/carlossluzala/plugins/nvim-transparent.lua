-- import lualine plugin safely
local status, transparent = pcall(require, "transparent")
if not status then
  return
end

transparent.setup {
  enable = true,
}
