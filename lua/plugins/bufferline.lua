return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    enabled = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      -- :h bufferline-configuration
      local bufferline = require("bufferline")
      bufferline.setup({
        options = {
          mode = 'tabs',
          always_show_bufferline = false,
          auto_toggle_bufferline = true,
          style_preset = bufferline.style_preset.minimal,
          themable = false,
          numbers = function (opts)
            ---@diagnostic disable-next-line: undefined-field // looks like types are wrong
            return string.format("[%d]", opts.ordinal)
          end,
          indicator = {
            style = 'icon',
          },
          close_icon = '',
          buffer_close_icon = '',
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true,
            },
          },
        }
      })
    end
  }
}
