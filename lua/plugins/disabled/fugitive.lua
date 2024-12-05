return {
  {
    'tpope/vim-fugitive',
    lazy = true,
    enabled = false,
    config = function ()
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
    end
  },
}
