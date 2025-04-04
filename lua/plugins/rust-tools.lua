return {
  {
    'simrat39/rust-tools.nvim',
    lazy = true,
    ft = 'rust',
    config = function ()
      vim.print("Configuring rust-tools")
      local rt = require("rust-tools")
      rt.setup({
        inlay_hints = {
          auto = true,
          only_current_line = false,
          show_parameter_hints = true,
        }
      })
    end
  }

}
