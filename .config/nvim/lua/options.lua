require "nvchad.options"

-- add yours here!

local o = vim.o
--o.cursorlineopt = "both" -- to enable cursorline!
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.relativenumber = true
o.mouse = "a"
-- toggle keys on startup
vim.cmd "ShowkeysToggle"
-- more visible relative lines
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#f5c2e7", bold = false })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#f5c2e7", bold = false })
-- neovide
o.guifont = "DepartureMono Nerd Font:h14"
-- transparency
vim.g.neovide_opacity = 0.95
vim.g.neovide_normal_opacity = 0.95
-- blur
vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 1.0
vim.g.neovide_floating_blur_amount_y = 1.0
-- I hate round corners
vim.g.neovide_floating_corner_radius = 0.0
-- 240 hz twin
vim.g.neovide_refresh_rate = 240
-- fixed colors for neovide
if vim.g.neovide then
  vim.g.terminal_color_0 = "#45475a"
  vim.g.terminal_color_1 = "#f38ba8"
  vim.g.terminal_color_2 = "#a6e3a1"
  vim.g.terminal_color_3 = "#f9e2af"
  vim.g.terminal_color_4 = "#89b4fa"
  vim.g.terminal_color_5 = "#f5c2e7"
  vim.g.terminal_color_6 = "#94e2d5"
  vim.g.terminal_color_7 = "#bac2de"
  vim.g.terminal_color_8 = "#585b70"
  vim.g.terminal_color_9 = "#f38ba8"
  vim.g.terminal_color_10 = "#a6e3a1"
  vim.g.terminal_color_11 = "#f9e2af"
  vim.g.terminal_color_12 = "#89b4fa"
  vim.g.terminal_color_13 = "#f5c2e7"
  vim.g.terminal_color_14 = "#94e2d5"
  vim.g.terminal_color_15 = "#a6adc8"
end

-- add undotree (neovim version 0.12)
vim.cmd "packadd nvim.undotree"
