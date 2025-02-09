return {
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      {
        'j-hui/fidget.nvim',
        tag = 'v1.6.1',
        opts = {},
      },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
      { 'saghen/blink.cmp' },
    },
    config = function(_, opts)
      local lspconfig = require('lspconfig')
      if opts.servers == nil then
        return
      end
      for server, config in pairs(opts.servers) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end
  },
  {
    'folke/neodev.nvim',
    opts = {},
  }
}
