return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        hide_inactive_statusline = false,
        lualine_bold = true,
        on_colors = function(colors)
          colors.fg_gutter = "#b2b8cf"
          colors.fg_dark = "#b2b8cf"
          colors.dark5 = "#b2b8cf"
        end,
      })
    end,
  },
}
