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
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- use 'rstacruz/vim-closer'
  -- My fork with a fix for closing '{' after else / else if
  use {
    'kkafar/vim-closer',
    branch = '@kkafar/attempt-to-fix-bracket-close-after-else'
  }
  -- Another possible solution
  -- use 'jiangmiao/auto-pairs'

  -- Does not work :( 
  -- use {
  --   'm4xshen/autoclose.nvim'
  -- }


  use 'tpope/vim-endwise'
  use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround
  use { 'mg979/vim-visual-multi', branch = 'master' } -- TO LEARN https://github.com/mg979/vim-visual-multi

  use 'windwp/nvim-ts-autotag'
  -- use 'RRethy/vim-illuminate' -- highlites other references for symbol under the cursor (but looks ugly)
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

  use {
    'folke/zen-mode.nvim'
  }

  use {
    'utilyre/barbecue.nvim',
    requires = {
      'SmiteshP/nvim-navic'
    },
    after = 'nvim-web-devicons'
  }

  -- Awesome page with lots of plugins
  -- https://neovimcraft.com/

  -- Plugins to try out
  -- https://github.com/folke/trouble.nvim
  -- https://github.com/lewis6991/gitsigns.nvim
  -- https://github.com/pwntester/octo.nvim
  -- https://github.com/ray-x/navigator.lua
  -- https://github.com/stevearc/oil.nvim
  -- https://github.com/kdheepak/lazygit.nvim 
  -- https://github.com/utilyre/barbecue.nvim
  -- https://github.com/mrjones2014/smart-splits.nvim

  -- Potential plugins to reconsider
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  -- https://github.com/windwp/nvim-autopairs
  -- https://github.com/justinmk/vim-sneak
end)
