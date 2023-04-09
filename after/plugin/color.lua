-- Configuration for tokyo-night theme
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_transparent = true

vim.opt.background = "light"
vim.cmd("colorscheme tokyonight-day")

-- vim.opt.background = "dark"
-- vim.cmd("colorscheme tokyonight-dark")


-- Configuration for rose-pine theme
-- function ColorMyPencils(color)
--   color = color or "rose-pine"
--   vim.cmd.colorscheme(color)
-- 
--   -- 0 means "global space" --> so every window is affected
--   -- "Normal" means "vim" -- why? No one knows 
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
-- 
-- ColorMyPencils()

