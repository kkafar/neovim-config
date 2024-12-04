-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd().Ex)

-- <leader>f* is reserved for NvimTree
-- <leader>e the same
--
-- <leader>p* is reserved for Telescope
local options = { remap = false }

vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("x", "<leader>p", "\"_dP")
-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("v", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")
-- vim.keymap.set("n", "<leader>d", "\"_d")
-- vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-'>", "<Esc>$a")
vim.keymap.set("i", "<C-;>", "<Esc>^i")

vim.keymap.set("n", "<leader>o", "o<Esc>k")
vim.keymap.set("n", "<leader>O", "O<Esc>j")

vim.keymap.set("i", "<A-h>", "<C-o>h", options)
vim.keymap.set("i", "<A-j>", "<C-o>j", options)
vim.keymap.set("i", "<A-k>", "<C-o>k", options)
vim.keymap.set("i", "<A-l>", "<C-o>l", options)
vim.keymap.set("i", "<A-w>", "<C-o>w", options)
vim.keymap.set("i", "<A-e>", "<C-o>e", options)
vim.keymap.set("i", "<A-b>", "<C-o>b", options)
vim.keymap.set("i", "<A-B>", "<C-o>B", options)
vim.keymap.set("i", "<A-E>", "<C-o>E", options)
vim.keymap.set("i", "<A-W>", "<C-o>W", options)

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

