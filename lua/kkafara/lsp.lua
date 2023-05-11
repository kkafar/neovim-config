-- https://github.com/simrat39/rust-tools.nvim#configuration
require("rust-tools").setup({
  tools = {
    inlay_hints = {
      auto = true,
      only_current_line = false,
      show_parameter_hints = true,
    }
  }
})

