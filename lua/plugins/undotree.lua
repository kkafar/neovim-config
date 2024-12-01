return {
  {
    'mbbill/undotree',
    lazy = true,
    enabled = false,
    config = function ()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {})
    end
  },
}
