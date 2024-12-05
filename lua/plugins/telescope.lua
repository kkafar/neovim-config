return {
  {
    'nvim-telescope/telescope.nvim',
    -- tag = '0.1.3',
    branch = '0.1.x',
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
              ["<C-h>"] = "which_key"
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
      local opts = { remap = true }

      -- Lists files in current working directory, respects .gitignore
      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope: Find files' })

      -- Uses git ls-files underneath, respects .gitignore, excludes files that are not under VCS
      vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope: Find git files' })

      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("grep > ") })
      end, { desc = 'Telescope grep files for string' })

      -- Searches for the string under the cursor or selection in cwd
      vim.keymap.set('n', '<leader>pg', builtin.grep_string, { desc = 'Telescope: Grep files for string under the cursor' })

      -- Searches for a string in cwd, respects .gitignore
      vim.keymap.set('n', '<leader>pj', builtin.live_grep, { desc = 'Telescope: Live grep' })
      vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Live grep in current buffer' })

      vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope: List buffers' })
      vim.keymap.set('n', '<leader>po', builtin.oldfiles, { desc = 'Telescope: List recent files' })
      vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope: Search tag in neovim help pages' })

      -- List of pickers: https://github.com/nvim-telescope/telescope.nvim#pickers
      -- There are a lot of them!!!
      -- There are also:
      -- builtin.commands

      vim.keymap.set('n', '<leader>pc', builtin.commands, { desc = 'Telescope: Search available commands' })
      vim.keymap.set('n', '<leader>pt', builtin.colorscheme, { desc = 'Telescope: Select colorscheme' })
      vim.keymap.set('n', '<leader>pq', builtin.quickfix, { desc = 'Telescope: List quickfixes' })
      vim.keymap.set('n', '<leader>pl', builtin.jumplist, { desc = 'Telescope: View jumplist' })

      vim.keymap.set('n', '<leader>vo', builtin.vim_options, { desc = 'Telescope: List available vim options' })
      vim.keymap.set('n', '<leader>pr', builtin.registers, { desc = 'Telescope: Show current register state' })


      -- Pickers from Neovim LSP
      --
      -- I believe `mason` setups these keybindings
      vim.keymap.del('n', 'gra')
      vim.keymap.del('n', 'gri')
      vim.keymap.del('n', 'grn')
      vim.keymap.del('n', 'grr')

      vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'Telescope: List symbol references' })
      vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Telescope: List symbol references' }) -- Alternative


      vim.keymap.set('n', '<leader>lsd', builtin.lsp_document_symbols, { desc = 'Telescope: Show document symbols '})
      -- vim.keymap.set('n', 'gsd', builtin.lsp_document_symbols, { desc = 'Telescope: Show document symbols '}) -- Alternative


      vim.keymap.set('n', '<leader>lsw', builtin.lsp_workspace_symbols, { desc = 'Telescope: Show workspace symbols' })
      vim.keymap.set('n', '<leader>ld', builtin.diagnostics, { desc = 'Telescope: Show diagnostics' }) -- requires options!!


      -- Handled by lsp
      -- vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
      vim.keymap.set("n", "gd", builtin.lsp_definitions, vim.tbl_extend('error', opts, { desc = 'Telescope: Goto definition' }))
      vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, vim.tbl_extend('error', opts, { desc = 'Telescope: Goto type definition' }))
      vim.keymap.set("n", "gi", builtin.lsp_implementations, vim.tbl_extend('error', opts, { desc = 'Telescope: Show implementations' }))

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
