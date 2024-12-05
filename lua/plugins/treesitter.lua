-- TreeSitter
return {
  {
    'nvim-treesitter/playground',
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    lazy = false,
    priority = 40, -- we want to laod this after treesitter, 50 is the default priority
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    config = function()
      require('nvim-treesitter.configs').setup({
        modules = {},
        ignore_install = {},
        -- A list of parser names, or "all" (the four listed parsers should always be installed)
        ensure_installed = { "c", "cpp", "tsx", "vimdoc", "vim", "lua", "vim", "javascript", "typescript", "rust",
          "python" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
          -- `false` will disable the whole extension
          enable = true,
          additional_vim_regex_highlighting = false,

          autotag = {
            enable = true,
            enable_rename = true,
            enable_close = true,
            enable_close_on_slash = true,
          }
        },
        indent = {
          enable = true,
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['ap'] = '@parameter.outer',
              ['ip'] = '@parameter.inner',
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
              ['ab'] = '@block.outer',
              ['ib'] = '@block.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              [']f'] = '@function.outer',
              [']c'] = '@class.outer',
            },
            goto_next_end = {
              [']F'] = '@function.outer',
              [']C'] = '@class.outer',
            },
            goto_previous_start = {
              ['[f'] = '@function.outer',
              ['[c'] = '@class.outer',
            },
            goto_previous_end = {
              ['[F'] = '@function.outer',
              ['[C'] = '@class.outer',
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ['<leader>sw'] = '@parameter.inner',
            },
            swap_previous = {
              ['<leader>sb'] = '@parameter.inner',
            }
          },
        },
        -- TODO: Experiment with this feature
        -- incremental_selection = {
        --   enable = true,
        --   keymaps = {
        --     init_selection = "gnn",
        --     node_incremental = "grn",
        --     scope_incremental = "grc",
        --     node_decremental = "grm"
        --   },
        -- },
      })
    end,
  },
}
