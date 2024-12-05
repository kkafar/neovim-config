return {
  {
    'folke/zen-mode.nvim',
    lazy = false,
    config = function()
      require("zen-mode").setup({
        window = {
          width = 0.45,
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
      vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', {})
    end,
  },
}
