-- Configuration for tokyo-night theme
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

-- vim.opt.background = "light"
-- vim.opt.background = "dark"

-- vim.cmd("colorscheme tokyonight-day")
-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme tokyonight-storm")

vim.cmd.colorscheme('tokyonight-moon')
-- vim.cmd("colorscheme tokyonight-moon")

local function toggle_theme()
  if vim.opt.background:get() == "dark" then
    vim.opt.background = "light"
    -- vim.cmd("colorscheme tokyonight-day")
  else
    vim.opt.background = "dark"
    -- vim.cmd("colorscheme tokyonight-moon")
  end
end

-- vim.keymap.set("n", "<leader>ut", vim.cmd.ToggleTheme, {})
vim.keymap.set("n", "<leader>ut", toggle_theme, { desc = "Select theme" })
