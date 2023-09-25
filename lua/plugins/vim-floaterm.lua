return {
  {
    'voldikss/vim-floaterm',
    enabled = false,
    config = function ()
      local opts = { remap = false }
      vim.keymap.set('n', '<leader>tn', ':FloatermNew --disposable<CR>', opts)
      vim.keymap.set('n', '<leader>tl', ':FloatermNext<CR>', opts)
      vim.keymap.set('n', '<leader>th', ':FloatermPrev<CR>', opts)
      vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>', opts)
      vim.keymap.set('t', '<leader>tc', 'exit<CR>', opts)
    end
  }
}

