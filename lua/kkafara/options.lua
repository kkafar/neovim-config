-- Comment this option to have "thin cursor" in insert mode
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.mapleader = " "

-- vim.opt.undodir = os.getenv("HOME") .. "./.vim/undodir"
-- vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.timeoutlen = 1000
vim.opt.hidden = true
vim.opt.cursorline = true

vim.opt.icon = true
vim.opt.ruler = true

-- vim.cmd [[
--   augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank()
--   augroup end
-- ]]
