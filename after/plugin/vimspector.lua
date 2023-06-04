-- local vs = require('vimspector')


local opts = { remap = false }
vim.keymap.set("n", "<leader>dl", ":call vimspector#Launch()<CR>", opts)
vim.keymap.set("n", "<leader>dr", ":call vimspector#Reset()<CR>", opts)
vim.keymap.set("n", "<leader>dc", ":call vimspector#Continue()<CR>", opts)
vim.keymap.set("n", "<leader>dt", ":call vimspector#ToggleBreakpoint()<CR>", opts)
vim.keymap.set("n", "<leader>dT", ":call vimspector#ClearBreakpoints()<CR>", opts)

vim.keymap.set("n", "<leader>dl", "<Plug>VimspectorStepOver", {})
vim.keymap.set("n", "<leader>dj", "<Plug>VimspectorStepInto", {})
vim.keymap.set("n", "<leader>dk", "<Plug>VimspectorStepOut", {})
vim.keymap.set("n", "<leader>dn", "<Plug>VimspectorRestart", {})

