return {
  {
    'kkafar/nvim-manager',
    lazy = true,
    branch = 'main',
    config = function ()
      local manager = require('nvim-manager')
      manager.setup()

      vim.keymap.set('n', '<C-t>n', vim.cmd.ManTabNew, {})
      vim.keymap.set('n', '<C-t>c', vim.cmd.ManTabClose, {})
      vim.keymap.set('n', '<C-t>l', vim.cmd.ManTabNext, {})
      vim.keymap.set('n', '<C-t>h', vim.cmd.ManTabPrev, {})
      vim.keymap.set('n', '<C-t>p', vim.cmd.ManTabList, {})

      -- vim.keymap.set('n', '<C-b>n', vim.cmd.ManBuffNew, {})
      -- vim.keymap.set('n', '<C-b>c', vim.cmd.ManBuffNew, {})
      vim.keymap.set('n', '<C-b>l', vim.cmd.ManBuffNext, {})
      vim.keymap.set('n', '<C-b>h', vim.cmd.ManBuffPrev, {})
      vim.keymap.set('n', '<C-b>p', vim.cmd.ManBuffList, {})
    end
  },
}
