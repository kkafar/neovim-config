-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd().Ex)

-- <leader>f* is reserved for NvimTree
-- <leader>e the same
--
-- <leader>p* is reserved for Telescope

vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- "s" for "split"
vim.keymap.set("n", "<leader>s", "<cmd>vsplit<CR>")

vim.keymap.set("i", "<C-'>", "<Esc>$a")
vim.keymap.set("i", "<C-;>", "<Esc>^i")

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

