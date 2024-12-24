return {
  {
    'williamboman/mason.nvim',
    lazy = false,
    enabled = true,
    config = function ()
      require("mason").setup()
    end
  }
}
