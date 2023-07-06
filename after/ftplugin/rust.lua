-- See :h g:rust

-- vim.cmd([[
--   let g:rust_recommended_style = 0
--   let g:rustfmt_autosave = 1
--   let g:rustfmt_fail_silently = 1
-- ]])
--
vim.g.rust_recommended_style = true

-- Unfotunately setting this to true causes many cache / backup files
-- to be automatically created on every save. TODO: Check whether I can controll this behaviour.
-- For now I'll just disable these.
vim.g.rustfmt_autosave = false
vim.g.rustfmt_fail_silently = false

-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
