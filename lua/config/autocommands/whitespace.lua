local Whitespace = require("lib.core.whitespace")


local whitespace = vim.api.nvim_create_augroup("whitespace", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = whitespace,
  desc = "Remove redundant whitespace from Python files on write",
  pattern = "*.{py,lua,rs,cpp,c,proto,js,ts,tsx}",
  callback = Whitespace.apply_buffer_whitespace_mods
})

