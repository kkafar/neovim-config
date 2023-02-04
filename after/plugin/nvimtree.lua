-- VSCode integration
if not vim.g.vscode then
  require("nvim-tree").setup({
    filters = {
      dotfiles = true,
    },
    renderer = {
      group_empty = true,
      icons = {
        git_placement = "after",
      }
    },
    view = {
      centralize_selection = true,
      cursorline = true,
      number = true,
      relativenumber = true,
    }
  })

  -- NvimTree keybindings
  -- These start with "f" prefix (as "filetree")
  -- Exeption is made for toggling, so that the access is faster
  vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
  vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeFocus)
  vim.keymap.set("n", "<leader>fu", vim.cmd.NvimTreeRefresh)
  vim.keymap.set("n", "<leader>f=", "<cmd>NvimTreeResize +10<CR>")
  vim.keymap.set("n", "<leader>f-", "<cmd>NvimTreeResize -10<CR>")
  vim.keymap.set("n", "<leader>ff", vim.cmd.NvimTreeFindFile)

end -- VSCode integration
