return {
  -- 'hrsh7th/cmp-nvim-lsp-signature-help'

  'numToStr/Comment.nvim',
  'tpope/vim-endwise',
  'tpope/vim-surround', -- https://github.com/tpope/vim-surround,
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  -- 'rstacruz/vim-closer'
  -- My fork with a fix for closing '{' after else / else if
  {
    'kkafar/vim-closer',
    branch = '@kkafar/attempt-to-fix-bracket-close-after-else'
  },
  -- Another possible solution
  -- 'jiangmiao/auto-pairs'

  -- Does not work :(
  -- {
  --   'm4xshen/autoclose.nvim'
  -- }

  {
    'mg979/vim-visual-multi',
    branch = 'master'
  }, -- TO LEARN https://github.com/mg979/vim-visual-multi

  'windwp/nvim-ts-autotag',
}
