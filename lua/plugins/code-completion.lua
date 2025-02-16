return {
  {
    'saghen/blink.cmp',
    dependencies = {
      { 'rafamadriz/friendly-snippets' },
      { 'saghen/blink.compat' },
      { 'folke/lazydev.nvim' }
    },
    -- use a release tag to download pre-built binaries
    version = '*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        preset = 'default',
        -- Can't use Enter for completion. Even when combined with selection.preselect function that
        -- should disable preselect in cmdline, hitting enter will accept suggestion and not execute command!
        -- This makes it impossible to execute any command, e.g. save the text using :w. Let's use <C-y> for a while...
        ['<CR>'] = { 'accept', 'fallback' },
        -- ['<Tab>'] = { 'accept', 'fallback' },
      },

      appearance = {
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      completion = {
        list = {

          selection = {
            preselect = function(ctx)
              return ctx.mode ~= 'cmdline'
            end,
            auto_insert = function(ctx)
              return ctx.mode ~= 'cmdline'
            end
          }
        },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
          window = {
            max_height = 120, -- 80 by default
            border = 'rounded'
          },
          -- might impact performance
          treesitter_highlighting = true,
        },

        accept = {
          create_undo_point = true,
          auto_brackets = {
            enabled = true,
          }
        },

        menu = {
          max_height = 20,
          border = 'rounded',
        }
      },

      signature = {
        enabled = true,
      },

      fuzzy = {
        max_typos = function(keyword)
          return math.min(math.floor(#keyword / 4), 2)
        end
      },
      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      -- 'lazydev' source comes from lazydev plugin by folke
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'lazydev' },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          }
        }
      },
    },
    opts_extend = { "sources.default" }
  },
  {
    'saghen/blink.compat',

  }
}
