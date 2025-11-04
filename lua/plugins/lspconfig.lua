return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          {
            "<leader>d]",
            function()
              vim.diagnostic.jump({ count = 1 })
            end,
            desc = "Move to next diagnostic",
          },
          {
            "<leader>d[",
            function()
              vim.diagnostic.jump({ count = -1 })
            end,
            desc = "Move to prev diagnostic",
          },
        },
      },
    },
  },
}
