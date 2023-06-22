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

vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', {})
