return {
  -- TreeSitter
  {
    'nvim-treesitter/nvim-treesitter',
     build = function()
       pcall(require('nvim-treesitter.install').update { with_sync = true })
     end,
  },

  {
    'nvim-web-devicons',
    dependencies = {
      'utilyre/barbecue.nvim',
    }
  },

  'nvim-treesitter/playground',

  -- Custom theme
  'folke/tokyonight.nvim',

  'mbbill/undotree',

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  },

  'tpope/vim-fugitive',

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
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
  },

  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  -- use 'hrsh7th/cmp-nvim-lsp-signature-help'
  'simrat39/rust-tools.nvim',

  'numToStr/Comment.nvim',

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },

  -- use 'rstacruz/vim-closer'
  -- My fork with a fix for closing '{' after else / else if
  {
    'kkafar/vim-closer',
    branch = '@kkafar/attempt-to-fix-bracket-close-after-else'
  },
  -- Another possible solution
  -- use 'jiangmiao/auto-pairs'

  -- Does not work :( 
  -- use {
  --   'm4xshen/autoclose.nvim'
  -- }


  'tpope/vim-endwise',
  'tpope/vim-surround', -- https://github.com/tpope/vim-surround,
  {
    'mg979/vim-visual-multi', branch = 'master'
  }, -- TO LEARN https://github.com/mg979/vim-visual-multi

  'windwp/nvim-ts-autotag',
  -- use 'RRethy/vim-illuminate' -- highlites other references for symbol under the cursor (but looks ugly)
  'puremourning/vimspector',


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
  -- 
  -- From kickstart.nvim
  -- tpope/vim-sleuth
  -- j-hui/fidget.nvim

  -- Potential plugins to reconsider
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  -- https://github.com/windwp/nvim-autopairs
  -- https://github.com/justinmk/vim-sneak
}
