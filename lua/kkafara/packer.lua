-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- TreeSitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  -- Custom theme
  use 'folke/tokyonight.nvim'

  use('mbbill/undotree')

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'simrat39/rust-tools.nvim'

  use { 'numToStr/Comment.nvim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'rstacruz/vim-closer'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround
  use { 'mg979/vim-visual-multi', branch = 'master' } -- TO LEARN https://github.com/mg979/vim-visual-multi
  use 'unblevable/quick-scope'

  use 'windwp/nvim-ts-autotag'
  -- use 'RRethy/vim-illuminate' -- highlites other references for symbol under the cursor (but look ugly)
  use 'puremourning/vimspector'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'voldikss/vim-floaterm'
  }


  use {
    'kkafar/nvim-manager',
    branch = 'main'
  }

  -- Potential plugins to reconsider
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  -- https://github.com/windwp/nvim-autopairs
  --
end)
