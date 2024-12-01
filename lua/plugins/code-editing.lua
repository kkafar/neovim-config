return {
  -- 'hrsh7th/cmp-nvim-lsp-signature-help'
  {
    'numToStr/Comment.nvim',
    config = function ()
      require('Comment').setup()
    end
  },
  'tpope/vim-endwise',
  -- 'tpope/vim-surround', -- https://github.com/tpope/vim-surround,
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  {
    'echasnovski/mini.surround',
    keys = function (_, keys)
      -- Populate the keys based on the user's options
      local plugin = require("lazy.core.config").spec.plugins["mini.surround"]
      local opts = require("lazy.core.plugin").values(plugin, "opts", false)
      local mappings = {
        { opts.mappings.add, desc = "Add surrounding", mode = { "n", "v" } },
        { opts.mappings.delete, desc = "Delete surrounding" },
        { opts.mappings.find, desc = "Find right surrounding" },
        { opts.mappings.find_left, desc = "Find left surrounding" },
        { opts.mappings.highlight, desc = "Highlight surrounding" },
        { opts.mappings.replace, desc = "Replace surrounding" },
        { opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines" },
      }
      mappings = vim.tbl_filter(function (m)
        return m[1] and #m[1] > 0
      end, mappings)
      return vim.list_extend(mappings, keys)
    end,
    opts = {
      mappings = {
        add = "gza", -- Add surrounding in Normal and Visual modes
        delete = "gzd", -- Delete surrounding
        find = "gzf", -- Find right surrounding
        find_left = "gzF", -- Find left surrounding
        highlight = "gzh", -- Highlihgt surrounding
        replace = "gzc", -- Replace (Change) surrounding
        update_n_lines = "gzn", -- Update `n_lines`
      },
    },
  },
  {
    'echasnovski/mini.pairs',
    event = "VeryLazy",
    opts = {
      mappings = {
        ['<'] = { action = 'open', pair = '<>', neigh_pattern = '[^\\].]' },
      }
    }
  },

  -- 'rstacruz/vim-closer'
  -- My fork with a fix for closing '{' after else / else if
  -- {
  --   'kkafar/vim-closer',
  --   branch = '@kkafar/attempt-to-fix-bracket-close-after-else'
  -- },
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

  {
    'windwp/nvim-ts-autotag',
    opts = {},
    -- config = function()
    --   require('nvim-ts-autotag').setup()
    -- end
  }
}

