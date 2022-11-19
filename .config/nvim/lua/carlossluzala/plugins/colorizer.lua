local setup, colorizer = pcall(require, "nvim-highlight-colors")

if not setup then
  return
end

colorizer.setup()
