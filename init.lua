-- Setup for nvimtree plugin
-- It requires to disable default netrw file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config")

-- Bootstarp lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins")

