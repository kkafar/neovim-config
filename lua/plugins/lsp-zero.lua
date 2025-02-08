return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    lazy = false,
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
      {
        'L3MON4D3/LuaSnip',
        version = "v2.*",
        build = "make install_jsregexp",
      },                                  -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    },
    config = function()
      -- Learn the keybindings, see :help lsp-zero-keybindings
      -- Learn to configure LSP servers, see :help lsp-zero-api-showcase
      local lspzero = require("lsp-zero")
      lspzero.preset("recommended")

      -- (Optional) Configure lua language server for neovim
      -- lsp.nvim_workspace()
      lspzero.nvim_workspace()

      lspzero.ensure_installed({
        "ts_ls",
        "eslint",
        "rust_analyzer",
        "clangd",
        "ruff",
        "pyright"
      })

      lspzero.configure("clangd", {
        filetypes = {
          "c", "cpp", "objc", "objcpp", "cuda", "proto", "mm", "m"
        }
      })

      -- Python

      -- lspzero.configure("pylsp", {
      --   settings = {
      --     pylsp = {
      --       plugins = {
      --         pycodestyle = {
      --           ignore = { 'W391', 'E501', 'E203', 'E265', 'E402', 'E504' },
      --           maxLineLength = 120
      --         }
      --       }
      --     }
      --   }
      -- })

      lspzero.configure("ruff", {
        settings = {

        },
      })

      lspzero.configure("rust_analyzer", {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              buildScripts = {
                enable = true,
              }
            }
          }
        }
      })

      local cmp = require("cmp")
      local cmp_select = { behaviour = cmp.SelectBehavior.Select }
      local cmp_mappings = lspzero.defaults.cmp_mappings({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        -- ['<tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
      })

      lspzero.setup_nvim_cmp({
        mapping = cmp_mappings
      })

      lspzero.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, remap = true }

        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        -- Handled by telescope
        -- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        -- vim.keymap.set("n", "<leader>D", function() vim.lsp.buf.type_definition() end, opts)
        -- vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)

        -- Handled by telescope
        -- vim.keymap.set("n", "<leader>psw", function() vim.lsp.buf.workspace_symbol() end, opts)
        -- vim.keymap.set("n", "<leader>psd", function() vim.lsp.buf.document_symbol() end, opts)
        -- vim.keymap.set("n", "<leader>lsw", function() vim.lsp.buf.workspace_symbol() end, opts)
        -- vim.keymap.set("n", "<leader>lsd", function() vim.lsp.buf.document_symbol() end, opts)

        vim.keymap.set("n", "g]", function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
        vim.keymap.set("n", "g[", function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)

        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)

        vim.keymap.set({ "n", "v" }, "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

        vim.keymap.set("n", "<leader>vrf", function() vim.lsp.codelens.refresh() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>vmt", function() vim.lsp.buf.format() end, opts)
        vim.keymap.set("n", "<F3>", function() vim.lsp.buf.format() end, opts)

        -- if client.name == "rust_analyzer" then
        --   local rt = require("rust-tools")
        --   rt.inlay_hints.set()
        --   rt.inlay_hints.enable()
        -- end
      end)

      lspzero.setup()

      -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v1.x/doc/md/lsp.md#configure-diagnostics
      vim.diagnostic.config({
        virtual_text = true,
      })
    end
  },
}
