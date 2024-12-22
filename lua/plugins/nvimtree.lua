return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',
    lazy = false,
    config = function()
      require("nvim-tree").setup({
        auto_reload_on_write = true,
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
      -- TODO: These should be moved somewhere else!!
      -- NvimTree keybindings
      -- These start with "f" prefix (as "filetree")
      -- Exeption is made for toggling, so that the access is faster
      vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
      vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeFocus)
      vim.keymap.set("n", "<leader>fu", vim.cmd.NvimTreeRefresh)
      vim.keymap.set("n", "<leader>f=", "<cmd>NvimTreeResize +10<CR>")
      vim.keymap.set("n", "<leader>f-", "<cmd>NvimTreeResize -10<CR>")
      vim.keymap.set("n", "<leader>ff", vim.cmd.NvimTreeFindFile)
    end,
  },
}
