-- NvimTree keybindings
-- These start with "f" prefix (as "filetree")
-- Exeption is made for toggling, so that the access is faster
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>fu", vim.cmd.NvimTreeRefresh)
vim.keymap.set("n", "<leader>f=", "<cmd>NvimTreeResize +10<CR>")
vim.keymap.set("n", "<leader>f-", "<cmd>NvimTreeResize -10<CR>")
vim.keymap.set("n", "<leader>ff", vim.cmd.NvimTreeFindFile)

