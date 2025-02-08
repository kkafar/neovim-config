return {
  -- 'hrsh7th/cmp-nvim-lsp-signature-help'
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
        add = "<leader>sa", -- Add surrounding in Normal and Visual modes
        delete = "<leader>sd", -- Delete surrounding
        find = "<leader>sf", -- Find right surrounding
        find_left = "<leader>sF", -- Find left surrounding
        highlight = "<leader>sh", -- Highlihgt surrounding
        replace = "<leader>sc", -- Replace (Change) surrounding
        update_n_lines = "gzn", -- Update `n_lines`
      },
      -- Radious within the surrounding is searched
      n_lines = 20,
    },
  },
  {
    'echasnovski/mini.pairs',
    -- event = "VeryLazy",
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
  {
    -- Basic usage:
    --
    -- select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
    -- create cursors vertically with Ctrl-Down/Ctrl-Up
    -- select one character at a time with Shift-Arrows
    -- press n/N to get next/previous occurrence
    -- press [/] to select next/previous cursor
    -- press q to skip current and get next occurrence
    -- press Q to remove current cursor/selection
    -- start insert mode with i,a,I,A
    'mg979/vim-visual-multi',
    branch = 'master'
  },

  {
    'windwp/nvim-ts-autotag',
    opts = {},
  }
}

