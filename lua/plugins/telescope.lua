return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function ()
      local ts = require('telescope')
      local builtin = require('telescope.builtin')

      ts.setup({
        defaults = {
          mappings = {
            i = {
              ["<leader>h"] = "which_key"
            }
          }
        },
        -- pickers = {
        --
        -- },
        -- extensions = {
        --
        -- },
      })
      -- NOT SURE WHETHER THESE SHOULD BE PASSED, COPIERD IT FROM lsp-zero.lua
      local opts = { remap = false }

      -- Lists files in current working directory, respects .gitignore
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

      -- Uses git ls-files underneath, respects .gitignore, excludes files that are not under VCS
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})

      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("grep > ") })
      end, {})

      -- Searches for the string under the cursor or selection in cwd
      vim.keymap.set('n', '<leader>pg', builtin.grep_string, {})

      -- Searches for a string in cwd, respects .gitignore
      vim.keymap.set('n', '<leader>pj', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})

      vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>po', builtin.oldfiles, {})
      vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

      -- List of pickers: https://github.com/nvim-telescope/telescope.nvim#pickers
      -- There are a lot of them!!!
      -- There are also:
      -- builtin.commands

      vim.keymap.set('n', '<leader>pc', builtin.commands, {})
      vim.keymap.set('n', '<leader>pt', builtin.colorscheme, {})
      vim.keymap.set('n', '<leader>pq', builtin.quickfix, {})
      vim.keymap.set('n', '<leader>pl', builtin.jumplist, {})

      vim.keymap.set('n', '<leader>vo', builtin.vim_options, {})
      vim.keymap.set('n', '<leader>pr', builtin.registers, {})


      -- Pickers from Neovim LSP
      --
      vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})
      vim.keymap.set('n', '<leader>lsd', builtin.lsp_document_symbols, {})
      vim.keymap.set('n', '<leader>lsw', builtin.lsp_workspace_symbols, {})
      vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {}) -- requires options!!


      -- Handled by lsp
      -- vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
      vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
      vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, opts)
      vim.keymap.set("n", "gi", builtin.lsp_implementations, opts)

      vim.keymap.set("n", "<leader>gi", builtin.lsp_incoming_calls, opts)
      vim.keymap.set("n", "<leader>go", builtin.lsp_outgoing_calls, opts)

      -- Git pickers
      vim.keymap.set('n', '<leader>pgc', builtin.git_commits, {})
      vim.keymap.set('n', '<leader>pgcb', builtin.git_bcommits, {})
      vim.keymap.set('n', '<leader>pgb', builtin.git_branches, {})
      vim.keymap.set('n', '<leader>pgs', builtin.git_status, {})

      -- Integration with treesitter
      vim.keymap.set('n', '<leader>pgt', builtin.treesitter, {})
    end
  },
}
