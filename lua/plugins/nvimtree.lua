return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  tag = 'nightly',
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
        git_clean = false,
      },
      renderer = {
        group_empty = true,
        highlight_git = false,
        icons = {
          git_placement = "after",
        },
        indent_markers = {
          enable = true,
        },
      },
      view = {
        centralize_selection = true,
        cursorline = true,
        number = true,
        relativenumber = true,
        float = {
          enable = false,
        }
      },
      git = {
        ignore = false,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      modified = {
        enable = true,
      }
    })
  end,
}
