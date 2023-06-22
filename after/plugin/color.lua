-- Configuration for tokyo-night theme
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_transparent = true

-- vim.opt.background = "light"
vim.opt.background = "dark"

require("tokyonight").setup({
  hide_inactive_statusline = true,
  lualine_bold = true,
  on_colors = function (colors)
    colors.fg_gutter = "#b2b8cf"
    colors.fg_dark = "#b2b8cf"
    colors.dark5 = "#b2b8cf"
  end
})

-- vim.cmd("colorscheme tokyonight-day")
-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme tokyonight-storm")
vim.cmd("colorscheme tokyonight-moon")


