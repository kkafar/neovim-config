return {
  {
    'folke/zen-mode.nvim',
    lazy = false,
    config = function()
      require("zen-mode").setup({
        window = {
          width = 140,
          options = {
            signcolumn = "yes",
            relativenumber = true,
          }
        },
        plugins = {
          kitty = {
            enabled = true,
          }
        }
      })
    end,
  },
}
