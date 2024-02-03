return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        hide_inactive_statusline = true,
        lualine_bold = true,
        light_style = "day",
        transparent = false,
        style = "moon",
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          sidebars  = "dark",  -- dark, transparent, normal
        },
        sidebars = { "qf", "help" },
        day_brightness = 0.3,
        dim_inactive = true,
        on_colors = function(colors)
          colors.fg_gutter = "#b2b8cf"
          colors.fg_dark = "#b2b8cf"
          colors.dark5 = "#b2b8cf"
        end,
      })
    end,
  },
}
